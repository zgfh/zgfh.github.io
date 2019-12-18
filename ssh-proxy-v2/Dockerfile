FROM daocloud.io/alpine
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories ; add openssh
RUN sed -i  's/GatewayPorts no/GatewayPorts yes/g' /etc/ssh/sshd_config
