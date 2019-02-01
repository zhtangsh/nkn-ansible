mkdir /nkn
cp config.json /nkn/
cp wallet.dat /nkn/
cp entrypoint.sh /nkn/
cp nknd /usr/local/bin/
cp nknc /usr/local/bin/
cp nkn.service /etc/systemd/system/
systemctl start nkn
