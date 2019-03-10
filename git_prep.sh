#!/bin/bash
yum install git

if [ ! -d /root/mlmos]
then
	git clone git@github.com:mircearares/mlmos.git /root/mlmos
else
	cd /root/mlmos
	git pull
fi

./bootstrap.sh
