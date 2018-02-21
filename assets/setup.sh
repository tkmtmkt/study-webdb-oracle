#!/bin/bash

# Change root password
echo 'root:admin' | chpasswd &&

# Install OpenSSH
yum -q -y install openssh-server openssh-clients &&
mkdir /var/run/sshd &&

# Generate host keys
ssh-keygen -t rsa1  -N '' -f /etc/ssh/ssh_host_key > /dev/null &&
ssh-keygen -t rsa   -N '' -f /etc/ssh/ssh_host_rsa_key > /dev/null &&
ssh-keygen -t dsa   -N '' -f /etc/ssh/ssh_host_dsa_key > /dev/null &&
ssh-keygen -t ecdsa -N '' -f /etc/ssh/ssh_host_ecdsa_key > /dev/null &&

# Setup user
useradd -u 1000 -m setup
echo 'setup:manager' | chpasswd &&

# Remove installation files
rm -r /assets/

exit $?
