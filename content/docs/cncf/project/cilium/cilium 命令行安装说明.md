非常抱歉之前的笔记遗漏了这部分重要内容。查找可用参数是配置 Cilium 的关键前提。我已将“如何查找可用参数”作为独立章节补充进笔记中，特别是针对离线环境的查找方法。
以下是更新后的完整 Markdown 笔记：
Cilium CLI (cilium install) 深度解析与离线安装指南
一、 cilium install 核心执行逻辑
cilium install 命令的代码逻辑位于 cilium/cilium-cli 仓库中。随着版本迭代，其底层已完全过渡到“基于 Helm 渲染并动态应用”的架构。
执行 cilium install 时，会经历以下 5 个关键阶段：
初始化与连接 K8s：读取 ~/.kube/config，建立与 K8s API Server 的连接。
集群环境自动探测：探测 K8s 版本、云厂商、系统内核版本等，自动适配配置（如探测到 GKE 自动开启 nodeinit）。
拉取 Helm Chart：默认从 https://helm.cilium.io 拉取指定版本的 Chart 包。
合并参数与渲染模板：将默认值、自动探测值、用户自定义值合并，使用 Helm SDK 渲染出标准的 K8s YAML 清单。
应用资源与等待就绪：
将 YAML 提交到集群（严格顺序：先创建 CRD -> 等待 CRD 注册完成 -> 创建其他资源）。
轮询等待 Cilium Agent (DaemonSet) 和 Operator (Deployment) 全部 Ready。
二、 如何查找所有可用的 Helm 配置参数
在配置 --set 或 --values 之前，必须知道有哪些参数可用。Cilium 的配置项多达数百个，可以通过以下几种方式查找：
1. 查阅官方文档 (在线环境推荐)
最权威的方式是访问 Cilium 官方文档的 Helm Reference 部分。这里按字母顺序列出了所有参数、默认值及其功能说明。
地址：https://docs.cilium.io/en/stable/helm-reference/
2. 使用 helm show values 命令 (在线环境)
如果你本地配置了 Helm 客户端，可以直接拉取默认配置查看：
helm repo add cilium https://helm.cilium.io/
helm show values cilium/cilium > default-values.yaml
打开 default-values.yaml，里面的所有键值对都是可以通过 --set 修改的参数。
3. 解压离线 .tgz 包查看 (离线环境唯一途径)
在离线环境中，你无法访问官方文档，也无法使用 helm show values。此时，最直接的方法是查看你已下载的 Chart 包内的 values.yaml 文件。
操作方法：
# 1. 解压你下载好的 tgz 包 (例如 cilium-1.15.5.tgz)
tar -zxvf cilium-1.15.5.tgz
# 2. 进入解压出的目录
cd cilium
# 3. 查看 values.yaml 文件
cat values.yaml
这个 values.yaml 文件包含了当前版本所有可配置的参数及其默认值和详细注释。你在里面看到的任何层级结构，都可以通过 --set a.b.c=value 的方式覆盖。
三、 自定义参数设置指南
因为底层依赖 Helm，设置自定义参数的本质就是向 Helm 传递配置。参数优先级为：
内置默认值 < 自动探测值 < --values 文件 < --set 命令行参数
1. 使用 --set (适用于少量参数)
语法与 helm install --set 完全一致。
# 启用 Kube-Proxy 替换
cilium install --set kubeProxyReplacement=true
# 启用 Hubble
cilium install --set hubble.relay.enabled=true --set hubble.ui.enabled=true
2. 使用 --values / -f (适用于复杂配置)
将配置写入 YAML 文件，适合 GitOps 或复杂场景。
# custom-values.yaml 示例
bgpControlPlane:
  enabled: true
hubble:
  relay:
    enabled: true
resources:
  limits:
    cpu: 1000m
cilium install -f custom-values.yaml
四、 查看/调试最终生效的参数
1. 打印最终渲染的 YAML (--dry-run)
CLI 没有直接打印纯 Helm Values 的命令，但可以通过 --dry-run 打印最终渲染的 K8s 资源清单。重点查看 cilium-config ConfigMap 即可反推生效参数。
cilium install --set hubble.relay.enabled=true --dry-run
2. 查看自动探测过程 (--debug)
如果想知道 CLI 自动加了哪些参数，加上 --debug：
cilium install --debug --dry-run
# 日志中会输出类似: level=debug msg="Setting Helm value: nodeinit.enabled=true"
⚠️ 注意： cilium install 底层使用 Helm 渲染，但未使用 Helm Release 管理。它直接通过 client-go 应用 YAML。因此，集群中不存在 Helm Secret 记录，helm get values cilium 命令无效。
五、 离线环境 安装指南
在离线环境中，执行流程中的“拉取 Helm Chart”和“拉取容器镜像”两个环节会失败，需提前准备。
1. 离线环境需准备的材料
在有网的机器上，准备以下三类文件：
Cilium CLI 二进制文件：放置在离线机器的 PATH 路径下。
Cilium Helm Chart 包 (.tgz)：# 有网机器上执行
helm repo add cilium https://helm.cilium.io/
helm pull cilium/cilium --version 1.15.5 -d /path/to/save/
# 将生成的 cilium-1.15.5.tgz 传至离线机器
Cilium 容器镜像：# 有网机器上拉取并导出
docker pull quay.io/cilium/cilium:v1.15.5
docker pull quay.io/cilium/operator-generic:v1.15.5
# (按需拉取 hubble-relay, certgen 等)
docker save -o cilium-images.tar quay.io/cilium/cilium:v1.15.5 quay.io/cilium/operator-generic:v1.15.5
# 将 tar 包传至离线机器
在离线机器上，将镜像导入节点或推送到内部私有仓库：
# 直接导入节点
docker load -i cilium-images.tar
# 或者推送到私有仓库 (推荐)
docker load -i cilium-images.tar
docker tag quay.io/cilium/cilium:v1.15.5 your-registry.com/cilium/cilium:v1.15.5
docker push your-registry.com/cilium/cilium:v1.15.5
2. 离线安装执行命令
离线安装时，必须使用 --chart-directory 参数指定本地 Chart 路径，绕过网络请求。同时需处理镜像地址和摘要校验问题。
场景 A：直接使用节点上的镜像 (docker load)
cilium install \
  --chart-directory /opt/cilium/cilium-1.15.5.tgz \
  --set image.useDigest=false \
  --set operator.image.useDigest=false
(注：必须关闭 useDigest，因为 docker save/load 可能会导致 sha256 摘要变化引发拉取失败)
场景 B：使用内部私有镜像仓库
cilium install \
  --chart-directory /opt/cilium/cilium-1.15.5.tgz \
  --set image.repository=your-registry.com/cilium/cilium \
  --set image.useDigest=false \
  --set operator.image.repository=your-registry.com/cilium/operator-generic \
  --set operator.image.useDigest=false \
  --set hubble.relay.image.repository=your-registry.com/cilium/hubble-relay \
  --set hubble.relay.image.useDigest=false
3. 关于 --chart-directory 的常见疑问
问：如果不指定 --chart-directory，CLI 会去本地默认目录找 Chart 吗？
答：不会。
如果不指定，CLI 会直接尝试联网下载 Chart 到 Helm 的默认缓存目录（如 ~/.cache/helm/repository/）。在离线环境下，即使你手动把 .tgz 放进该缓存目录，CLI 依然会尝试联网更新 index.yaml 进行校验，导致超时失败。
结论：离线环境下，--chart-directory 是强制必填项。
4. 离线安装排错技巧
执行带 --dry-run 的命令，提取所有 image: 字段进行核对，确保没有遗漏镜像：
cilium install \
  --chart-directory /opt/cilium/cilium-1.15.5.tgz \
  --set image.useDigest=false \
  --dry-run | grep image: