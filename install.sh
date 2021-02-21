# >_ Copyright by Gingdev 2020

ROOT=/data/data/com.termux/files
ADDR=127.0.0.1:9876
BIN=$PREFIX/bin/manager

# Download script file
wget https://gist.githubusercontent.com/huybopbi/988cf377d561e15e794c09af5c3869e4/raw/e1c62be414f2db37b2b1103524cfd27770290d29/manager.php -O $ROOT/index.php

# Set up alias
cat > $BIN <<EOF
cd $ROOT
php -S $ADDR &
xdg-open http://$ADDR
wait
EOF

chmod +x $BIN
