FROM alpine
RUN apk add openssh
RUN sed -i  's/GatewayPorts no/GatewayPorts yes/g' /etc/ssh/sshd_config
