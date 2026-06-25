---
title: GitOps 密钥脱敏：用 SOPS + Age 加密敏感配置
slug: gitops-sops-age
date_published: 2026-06-25T00:00:00.000Z
date_updated: 2026-06-25T00:00:00.000Z
tags: ["GitOps", "SOPS", "安全", "ArgoCD", "密钥管理"]
---

在 GitOps 实践中，配置文件和 Helm values 经常包含数据库密码、API Key 等敏感信息。直接将明文密钥提交到 Git 是一个严重的安全隐患。本文介绍如何用 **SOPS + Age** 实现"密文进 Git，用时解密"的方案，无需引入任何外部服务。

---

## 核心思路

```
开发者用公钥加密 → 密文提交 Git → ArgoCD sync 时用私钥解密 → 替换到配置中 → 部署
```

- **公钥**：明文写在 `.sops.yaml`，所有开发者可用来加密
- **私钥**：只存在 ArgoCD 的 Secret 中，不进 Git
- **密文**：安全提交 Git，无需额外服务

---

## 为什么选 SOPS + Age

| 方案 | 额外服务 | 密文进 Git | Helm 支持 | 运维成本 |
|------|---------|-----------|---------|---------|
| Vault + AVP | 需要 Vault 服务 | ✅ | ✅ | 高 |
| Sealed Secrets | 需要控制器 | ✅ | 需转换 | 中 |
| **SOPS + Age** | **无** | **✅** | **✅** | **低** |

SOPS + Age 是最轻量的方案：不依赖任何外部服务，私钥只存在集群 Secret 中，解密在 ArgoCD sync 时完成。

---

## 第一步：生成密钥对

```bash
# 安装 age
brew install age        # macOS
apt install age         # Ubuntu

# 生成密钥对
age-keygen -o age.key

# 输出示例：
# Public key: age1xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
# age.key 文件里包含私钥
```

**私钥（age.key）妥善保管，不要提交 Git。**

---

## 第二步：私钥存入 ArgoCD Secret

```bash
kubectl create secret generic sops-age-key \
  --from-file=age.key \
  -n argocd
```

---

## 第三步：配置 .sops.yaml 加密规则

在项目根目录创建 `.sops.yaml`，支持针对不同文件配置不同规则：

```yaml
creation_rules:
  # Helm values 文件，只加密敏感字段
  - path_regex: values.*\.yaml$
    encrypted_regex: "^(password|secret|key|token|credential|cert|privateKey)$"
    age: age1xxxxxx...   # 填入你的公钥

  # 普通配置 yaml
  - path_regex: config.*\.yaml$
    encrypted_regex: "^(password|secret|key|token)$"
    age: age1xxxxxx...

  # secrets 目录下所有文件，全部加密
  - path_regex: secrets/.*\.yaml$
    age: age1xxxxxx...
```

`encrypted_regex` 匹配的是 **yaml 的 key 名**，支持任意嵌套层级，无论多深都会递归处理。

---

## 第四步：加密文件

```bash
# 加密文件（原地加密，或输出到新文件）
sops -e values-secret.yaml > values-secret.enc.yaml

# 直接编辑加密文件（自动解密打开，保存时重新加密）
SOPS_AGE_KEY_FILE=~/.age/age.key sops values-secret.enc.yaml
```

加密效果示例：

```yaml
# 加密前（values-secret.yaml）
db:
  host: postgres.prod.svc   # 不敏感
  password: mysecret        # 敏感
  port: 5432                # 不敏感

# 加密后（values-secret.enc.yaml），可安全提交 Git
db:
  host: postgres.prod.svc                      # 明文保留
  password: ENC[AES256_GCM,data:xxx...,type:str]  # 密文
  port: 5432                                   # 明文保留
sops:
  age:
    - recipient: age1xxxxxx...
  lastmodified: "2024-01-01T00:00:00Z"
  version: 3.8.0
```

---

## 第五步：ArgoCD 挂载私钥

在 `argocd-repo-server` 中挂载私钥：

```yaml
# argocd-repo-server Deployment patch
env:
  - name: SOPS_AGE_KEY_FILE
    value: /etc/sops/age.key
volumeMounts:
  - name: sops-age-key
    mountPath: /etc/sops
volumes:
  - name: sops-age-key
    secret:
      secretName: sops-age-key
```

---

## 第六步：注册 ArgoCD Plugin

创建 `plugin.yaml`，ArgoCD sync 时自动解密并渲染：

```yaml
apiVersion: argoproj.io/v1alpha1
kind: ConfigManagementPlugin
metadata:
  name: helm-sops
spec:
  allowConcurrency: true
  discover:
    find:
      command:
        - sh
        - "-c"
        - "find . -name 'Chart.yaml' | xargs -I {} dirname {}"
  generate:
    command:
      - sh
      - "-c"
      - |
        # 解密所有 .enc.yaml 文件
        for f in $(find . -name "*.enc.yaml"); do
          sops -d "$f" > "${f%.enc.yaml}.yaml"
        done

        # Helm 场景
        if [ -f Chart.yaml ]; then
          helm template $ARGOCD_APP_NAME . \
            -f values.yaml \
            -f values-secret.yaml
        else
          # 普通 yaml 场景
          cat *.yaml
        fi
```

---

## 第七步：ArgoCD Application 配置

```yaml
apiVersion: argoproj.io/v1alpha1
kind: Application
metadata:
  name: my-app
spec:
  source:
    repoURL: https://github.com/my-org/my-app
    targetRevision: HEAD
    path: charts/my-app
    plugin:
      name: helm-sops
```

---

## 推荐目录结构

```
my-app/
├── .sops.yaml                # 加密规则，明文进 Git
├── Chart.yaml
├── values.yaml               # 非敏感配置，明文进 Git
├── values-secret.enc.yaml    # 敏感配置，加密进 Git
├── config.enc.yaml           # 其他加密配置
└── templates/
    └── ...
```

---

## 本地解密

有私钥的开发者可以在本地解密查看或编辑：

```bash
# 解密查看
SOPS_AGE_KEY_FILE=~/.age/age.key sops -d values-secret.enc.yaml

# 直接编辑（保存时自动重新加密）
SOPS_AGE_KEY_FILE=~/.age/age.key sops values-secret.enc.yaml

# 设置环境变量，避免每次指定
export SOPS_AGE_KEY_FILE=~/.age/age.key
sops values-secret.enc.yaml
```

---

## 团队权限管理

| 角色 | 持有 | 能做什么 |
|------|------|---------|
| 普通开发者 | 只有公钥（写在 .sops.yaml） | 加密新字段，不能解密 |
| 核心成员 / 运维 | 私钥（自行保管） | 解密查看、编辑 |
| ArgoCD | 私钥（存在集群 Secret） | sync 时自动解密 |

私钥通过安全渠道（1Password、企业密码管理器）分发给需要解密的人。

---

## 处理历史已泄漏的密钥

如果 Git 历史里已有明文密码，仅删除文件不够，需要清洗历史：

```bash
# 推荐：git-filter-repo
pip install git-filter-repo
git filter-repo --path secrets.yaml --invert-paths

# 清洗后强制推送
git push --force
```

> ⚠️ 清洗历史后，**必须立即轮转所有泄漏的密钥**，因为历史可能已被他人 clone。

---

## 总结

SOPS + Age 方案的核心优势：

- **无外部服务依赖**：私钥存在集群 Secret，无需 Vault、KMS 等额外服务
- **支持任意 yaml 文件**：Helm values、ConfigMap、普通配置文件均支持
- **字段级加密**：通过 `encrypted_regex` 只加密敏感字段，非敏感字段保持明文可读
- **ArgoCD 原生集成**：sync 时自动解密，发布流程无变化
- **灵活的权限模型**：公钥加密，私钥解密，开发者只需公钥即可参与
