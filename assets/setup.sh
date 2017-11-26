#!bin/bash

yum -q -y install openssh-server openssh-client &&

ssh-keygen -t rsa1    -N '' -f /etc/ssh/ssh_host_key > /dev/null &&
ssh-keygen -t rsa     -N '' -f /etc/ssh/ssh_host_rsa_key > /dev/null &&
ssh-keygen -t dsa     -N '' -f /etc/ssh/ssh_host_dsa_key > /dev/null &&
ssh-keygen -t ecdsa   -N '' -f /etc/ssh/ssh_host_ecdsa_key > /dev/null &&

mkdir /var/run/sshd &&
echo 'root:admin' | chpasswd &&

rm -r /assets/

exit $?
