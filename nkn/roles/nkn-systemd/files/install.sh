mkdir /nkn
systemctl stop nkn
cp config.json /nkn/
cp wallet.dat /nkn/
cp entrypoint.sh /nkn/
cp nknd /usr/local/bin/
cp nknc /usr/local/bin/
rm -rf /nkn/Log
cp nkn.service /etc/systemd/system/
systemctl enable nkn
systemctl start nkn
