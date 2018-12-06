#ubuntu
install_ubuntu(){
sudo apt-get install software-properties-common -y
sudo add-apt-repository ppa:max-c-lv/shadowsocks-libev -y
sudo apt-get update
sudo apt install shadowsocks-libev
}
#centos
install_centos(){
su -c 'yum update'
su -c 'yum install shadowsocks-libev'
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

