# >_ Copyright by Gingdev 2020

ROOT=/data/data/com.termux/files
ADDR=127.0.0.1:9876
BIN=$PREFIX/bin/manager

# Download script file
wget https://gist.githubusercontent.com/huybopbi/63f383f281ae5708f74c9cafa272283b/raw/9dd818b00bacd983b7e81143cf9f56af2f5ea5fa/manager.php -O $ROOT/index.php

# Set up alias
cat > $BIN <<EOF
cd $ROOT
php -S $ADDR &
xdg-open http://$ADDR
wait
EOF

chmod +x $BIN
