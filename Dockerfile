# 构建阶段：使用 Hugo 构建静态文件
FROM m.daocloud.io/ghcr.io/gohugoio/hugo:v0.150.1 AS builder

ENV GOPROXY https://goproxy.io,direct
ENV HUGO_MODULE_PROXY https://goproxy.io,direct
USER root
WORKDIR /src
COPY . .
RUN hugo --minify

# 运行阶段：使用 Nginx 提供静态服务
FROM m.daocloud.io/docker.io/library/nginx:alpine

# 拷贝构建好的静态文件到 nginx 的 html 目录
COPY --from=builder /src/public /usr/share/nginx/html

# 可选：自定义 nginx 配置（如有需要）
# COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]