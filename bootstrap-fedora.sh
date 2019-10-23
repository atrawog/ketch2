#!/bin/bash
sudo dnf makecache
sudo dnf install -y openssh-server ansible curl python3-pip
sudo systemctl enable --now sshd
sudo sh -c 'cat /dev/zero | ssh-keygen -q -N ""'
sudo sh -c 'curl -L https://github.com/atrawog.keys >> /root/.ssh/authorized_keys'
