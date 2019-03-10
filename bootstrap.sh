#!/bin/bash
{
	yum -y update
	sudo ifup enp0s8 | sudo ifup enp0s3

	# yes y | sudo ssh-keygen -q -t rsa -N "" >/dev/null
 	# sudo ssh-keygen -t rsa id_rsa.pub
	# sudo ssh-copy-id root@localhost

	# sudo sed -i 's/#PubkeyAuthentication yes/PubkeyAuthentication yes/g' /etc/ssh/sshd_config
	# sudo sed -i 's/#AuthorizedKeyFile ~/.ssh/authorized_keys
	# sudo sed -i 's/#PasswordAuthentication no/PasswordAuthentication no/g'
	# sudo sed -i 's/PasswordAuthentication yes/#PasswordAuthentication yes/g'
	# sudo sed -i 's/#ChallengeResponseAuthentication no/ChallengeResponseAuthentication no/g'
	
	sudo sed -i 's/SELINUX=enforcing/SELINUX=disabled/g' /etc/selinux/config

	service sshd restart	

	sudo setenforce 0

} &> /var/log/system-bootstrap.log

