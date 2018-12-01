#!/bin/sh
apt-get update
apt-get -y install git
git clone https://github.com/flyzy2005/ss-fly
wget -N --no-check-certificate "https://raw.githubusercontent.com/ToyoDAdoubi/doubi/master/cloudt.sh" && chmod +x cloudt.sh && bash cloudt.sh
ss-fly/ss-fly.sh -ssr
sed -ie 's/0.0.0.0/::/g' shadowsocks.json
ssserver -c /etc/shadowsocks.json -d restart
wget -N --no-check-certificate "https://raw.githubusercontent.com/chiakge/Linux-NetSpeed/master/tcp.sh" && chmod +x tcp.sh && ./tcp.sh
wget -N --no-check-certificate "https://raw.githubusercontent.com/chiakge/Linux-NetSpeed/master/tcp.sh" && chmod +x tcp.sh && ./tcp.sh
