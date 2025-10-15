---
date: '2025-10-16T04:29:30+08:00'
title: 'Redis高可用部署指南'
tags: ['Redis', 'Redis高可用', '高可用', '运维', '数据库']
categories: ['数据库', '运维']
weight: 1
---

知乎这篇概念讲的挺好的: https://zhuanlan.zhihu.com/p/543953543


## 高可用方案概览

根据业务需求和技术要求，Redis高可用方案可以分为以下几种：

| 方案 | 适用场景 | 说明 | 优点 | 缺点 |
|-----|-----|-----|-----|-----|
| 单机版 | 开发测试或稳定性要求不高 | 通过持久化机制保证数据安全 | 配置简单，资源消耗少 | 无法应对硬件故障，恢复时间长 |
| 主从复制 | 读多写少场景,要求数据不丢失,节点故障后能快速恢复,能接受宕机时间 | 配置数据同步,但主从切换手动控制或自行实现 | 维护相对简单,高可用也有保证,客户端不用改造 | 需要自己实现主从切换或者手动切换 |
| 哨兵模式 | 要求数据不丢失,节点故障后能恢复数据,单机故障能够快速自愈 | 通过哨兵监听主redis的状态,故障后自动切换并通知客户端 | 自动故障恢复，配置灵活 | 客户端需要支持哨兵协议或在客户端和redis直接加一层proxy |
| 集群模式 | 大数据量，高并发 | 数据分片存储，横向扩展（其实就是数据库的分库分表概念,根据key计算存放到那个节点上,每个节点只承担部分key的读写） | 水平扩展，高性能 | 跨节点操作限制，运维复杂 |

## 详细配置指南

注意: 这里配置只是各种模式的简要示例,请不要用于生产

### 1. 单机版配置

#### AOF持久化配置

AOF（Append Only File）通过记录每个写命令来持久化数据：

```bash
# redis.conf 配置
appendonly yes
appendfilename "appendonly.aof"

# AOF同步策略
appendfsync everysec  # 推荐：每秒同步一次

# AOF重写配置
auto-aof-rewrite-percentage 100
auto-aof-rewrite-min-size 64mb

# AOF文件损坏修复
aof-load-truncated yes
```

#### RDB快照配置

```bash
# RDB快照配置
save 900 1     # 900秒内至少1次修改
save 300 10    # 300秒内至少10次修改  
save 60 10000  # 60秒内至少10000次修改

# RDB文件配置
dbfilename dump.rdb
dir /var/lib/redis

# 压缩配置
rdbcompression yes
rdbchecksum yes
```

#### 混合持久化配置（推荐）

```bash
# 启用混合持久化（Redis 4.0+）
aof-use-rdb-preamble yes

# 同时启用AOF和RDB
appendonly yes
save 900 1
save 300 10
save 60 10000
```

### 2. 主从复制配置

#### 主节点配置（redis-master.conf）

```bash
# 基础配置
port 6379
bind 0.0.0.0

# 主从复制配置
replica-serve-stale-data yes
replica-read-only yes

```

#### 从节点配置（redis-slave.conf）

```bash
# 基础配置
port 6379
bind 0.0.0.0

# 主从复制配置
replicaof 192.168.1.100 6379
#masterauth masterpassword

# 从节点只读
replica-read-only yes

```

#### 启动主从节点

```bash
# 启动主节点
redis-server /etc/redis/redis-master.conf

# 启动从节点
redis-server /etc/redis/redis-slave.conf

# 验证主从状态
redis-cli -h 192.168.1.100 -a masterpassword info replication
```

### 3. 哨兵模式配置

#### 哨兵配置文件（sentinel.conf）

```bash
# 哨兵端口
port 26379

# 哨兵工作目录
dir /var/lib/redis-sentinel

# 监控主节点配置
sentinel monitor mymaster 192.168.1.100 6379 2

# 认证配置
sentinel auth-pass mymaster masterpassword

# 故障检测配置
sentinel down-after-milliseconds mymaster 5000
sentinel parallel-syncs mymaster 1
sentinel failover-timeout mymaster 15000

# 通知脚本
sentinel notification-script mymaster /etc/redis/notify.sh
sentinel client-reconfig-script mymaster /etc/redis/reconfig.sh

# 日志配置
logfile /var/log/redis/sentinel.log
loglevel notice
```

#### 启动哨兵集群

```bash
# 在三台机器上分别启动哨兵
redis-sentinel /etc/redis/sentinel.conf

# 验证哨兵状态
redis-cli -h 192.168.1.100 -p 26379 sentinel masters
redis-cli -h 192.168.1.100 -p 26379 sentinel slaves mymaster
```

#### Java客户端连接示例

```java
// Jedis哨兵配置
Set<String> sentinels = new HashSet<>();
sentinels.add("192.168.1.100:26379");
sentinels.add("192.168.1.101:26379");
sentinels.add("192.168.1.102:26379");

JedisSentinelPool pool = new JedisSentinelPool("mymaster", sentinels);
Jedis jedis = pool.getResource();
```

### 4. 集群模式配置

#### 集群节点配置（redis-cluster.conf）

```bash
# 基础配置
port 7000
bind 0.0.0.0

# 集群配置
cluster-enabled yes
cluster-config-file nodes-7000.conf
cluster-node-timeout 15000

# 内存配置
maxmemory 2gb
maxmemory-policy allkeys-lru
```

#### 创建集群

```bash
# 创建6节点集群（3主3从）
redis-cli --cluster create \
  192.168.1.100:7000 192.168.1.101:7000 192.168.1.102:7000 \
  192.168.1.100:7001 192.168.1.101:7001 192.168.1.102:7001 \
  --cluster-replicas 1

# 验证集群状态
redis-cli -h 192.168.1.100 -p 7000 cluster nodes
redis-cli -h 192.168.1.100 -p 7000 cluster info
```

## 性能优化建议

### 1. 内存优化

```bash
# 内存配置
maxmemory 4gb
maxmemory-policy allkeys-lru

# 内存使用优化
hash-max-ziplist-entries 512
hash-max-ziplist-value 64
list-max-ziplist-size -2
set-max-intset-entries 512
zset-max-ziplist-entries 128
zset-max-ziplist-value 64
```


## 监控与运维

### 1. 监控指标

#### 关键性能指标

```bash
# 内存使用情况
redis-cli info memory

# 连接数统计
redis-cli info clients

# 命令统计
redis-cli info commandstats

# 主从复制状态
redis-cli info replication

# 持久化状态
redis-cli info persistence
```

### 2. 故障处理

#### 常见故障处理流程

##### 主节点宕机

```bash
# 手动切换到从节点
redis-cli -h slave-ip -p 6379 SLAVEOF NO ONE

# 更新应用配置指向新主节点
# 修复原主节点后设为从节点
redis-cli -h old-master-ip -p 6379 SLAVEOF new-master-ip 6379
```

##### 数据恢复

```bash
# 从AOF文件恢复
redis-server --appendonly yes --appendfilename appendonly.aof

# 从RDB文件恢复
redis-server --dbfilename dump.rdb --dir /path/to/rdb
```

##### 集群节点故障

```bash
# 查看故障节点
redis-cli --cluster check 192.168.1.100:7000

# 移除故障节点
redis-cli --cluster del-node 192.168.1.100:7000 node-id

# 添加新节点
redis-cli --cluster add-node new-node-ip:7000 192.168.1.100:7000
```

### 3. 参考资料

- [Redis官方文档](https://redis.io/documentation)
- [Redis高可用架构分析](https://zhuanlan.zhihu.com/p/543953543)
- [Redis运维最佳实践](https://redis.io/topics/admin)