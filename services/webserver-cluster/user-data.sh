#!/bin/bash
wget https://busybox.net/downloads/binaries/1.28.1-defconfig-multiarch/busybox-x86_64
mv busybox-x86_64 busybox
chmod +x busybox
cat > index.html <<EOF
<h1>Hello, World</h1>
<p>DB address: ${db_address}</p>
<p>DB port: ${db_port}</p>
EOF
nohup ./busybox httpd -f -p ${server_port} &