#!/usr/bin/env bash

# these commands are run as root
# if ansible user is somehow broken or missing, execute this script to repair it

useradd -m ansible -s /bin/bash
mkdir /home/ansible/.ssh
chmod 700 /home/ansible/.ssh
chown ansible:ansible /home/ansible/.ssh
echo "ansible ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers.d/ansible
chmod 0440 /etc/sudoers.d/ansible
echo "< place key here >" >> /home/ansible/.ssh/authorized_keys
chmod 600 /home/ansible/.ssh/authorized_keys
chown ansible:ansible /home/ansible/.ssh/authorized_keys
