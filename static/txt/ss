#ubuntu
install_ubuntu(){
sudo apt-get install software-properties-common -y
sudo add-apt-repository ppa:max-c-lv/shadowsocks-libev -y
sudo apt-get update
sudo apt install shadowsocks-libev
}
#centos
install_centos(){
wget https://github.com/shadowsocks/shadowsocks-go/releases/download/1.1.5/shadowsocks-local-linux64-1.1.5.gz
gunzip shadowsocks-local-linux64-1.1.5.gz
chmod +x shadowsocks-local-linux64-1.1.5
./shadowsocks-local-linux64-1.1.5 -c config.json &
mv shadowsocks-local-linux64-1.1.5 /usr/local/bin/ss-local
}
install_centos||install_ubuntu

cat >config.json<<-EOF
{
  "server": "your.ss-server.com",
  "server_port": 59013,
  "local_address":"0.0.0.0",
  "local_port": 1080,
  "password": "password",
  "timeout": 600,
  "method": "aes-256-cfb"
}
EOF

ss-local -c config.json &

# test
SS_URL=socks5://127.0.0.1:1080/
export http_proxy=$SS_URL HTTPS_PROXY=$SS_URL ALL_PROXY=$SS_URL NO_PROXY=NO_PROXY=localhost,127.0.0.1,docker.io,yanzhe919.mirror.aliyuncs.com,99nkhzdo.mirror.aliyuncs.com,*.aliyuncs.com,*.mirror.aliyuncs.com,registry.docker-cn.com,hub.c.163.com,hub-auth.c.163.com
curl google.com
