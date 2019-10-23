#!/bin/bash
sudo sh -c 'dnf makecache'
sudo sh -c 'dnf install -y openssh-server ansible curl python3-pip'
sudo sh -c 'systemctl enable --now sshd'
sudo sh -c 'cat /dev/zero | ssh-keygen -q -N ""'
sudo sh -c 'curl -L https://github.com/atrawog.keys >> /root/.ssh/authorized_keys'
curl -L https://github.com/atrawog.keys >> ~/.ssh/authorized_keys
sudo sh -c 'alternatives --install /usr/bin/python python /usr/bin/python3.7 2'
sudo sh -c 'pip3 install invoke certifi hetzner'
sudo sh -c 'dnf upgrade -y'
sudo sh -c 'dnf clean all -y'
