FROM alpine
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositoriesapk ; add openssh
RUN sed -i  's/GatewayPorts no/GatewayPorts yes/g' /etc/ssh/sshd_config
