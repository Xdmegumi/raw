#!/bin/sh
wget -N --no-check-certificate "https://raw.githubusercontent.com/ToyoDAdoubi/doubi/master/cloudt.sh" && chmod +x cloudt.sh && bash cloudt.sh
wget -N --no-check-certificate https://raw.githubusercontent.com/ToyoDAdoubi/doubi/master/ssr.sh && chmod +x ssr.sh && bash ssr.sh
bash ssr.sh
sed -ie 's/0.0.0.0/::/g' /etc/shadowsocks.json
ssserver -c /etc/shadowsocks.json -d restart
wget -N --no-check-certificate "https://raw.githubusercontent.com/chiakge/Linux-NetSpeed/master/tcp.sh" && chmod +x tcp.sh && ./tcp.sh
wget -N --no-check-certificate "https://raw.githubusercontent.com/chiakge/Linux-NetSpeed/master/tcp.sh" && chmod +x tcp.sh && ./tcp.sh
