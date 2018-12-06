apt-get install --no-install-recommends gettext build-essential autoconf libtool libpcre3-dev asciidoc xmlto libev-dev libc-ares-dev automake libmbedtls-dev libsodium-dev
apt-get install software-properties-common -y
add-apt-repository ppa:max-c-lv/shadowsocks-libev -y
apt-get install -y privoxy

echo "forward-socks5 / 127.0.0.1:1080 ." >>/etc/privoxy/config

cat >>config.json<-EOF
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
service privoxy start
