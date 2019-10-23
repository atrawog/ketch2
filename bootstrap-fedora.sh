#!/bin/bash
sudo dnf makecache
sudo dnf install -y openssh-server ansible curl python3-pip
sudo systemctl enable --now sshd
sudo sh -c 'cat /dev/zero | ssh-keygen -q -N ""'
sudo sh -c 'curl -L https://github.com/atrawog.keys >> /root/.ssh/authorized_keys'
alternatives --install /usr/bin/python python /usr/bin/python3.7 2
pip3 install invoke certifi hetzner
dnf upgrade -y
dnf clean all -y
