#!/bin/bash
#do.sh 1755229325 740d926b98171xb0c3a3fe2c655005bc47c
auth=$1
telephone=$0

cp ./nb /root/nb && mv /root/nb /root/sams \
echo "29 11 * * * cd /root && nohup ./sams -telephone $telephone -authToken $auth  -payMethod 1  -deliveryType 2 -addressId 0 >/tmp/log.log 2>&1 & " >> /etc/crontab \
echo "59 13 * * * cd /root && nohup ./sams -telephone $telephone -authToken $auth  -payMethod 1  -deliveryType 2 -addressId 0 >/tmp/log.log 2>&1 & " >> /etc/crontab \
echo "35 11 * * * killall sams" >> /etc/crontab \
echo "05 13 * * * killall sams" >> /etc/crontab \
systemctl restart crond
echo "部署成功!"

