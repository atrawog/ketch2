#!/bin/bash
sudo dnf makecache
sudo dnf install -y openssh-server ansible curl python3-pip
sudo systemctl enable --now sshd
sudo cat /dev/zero | ssh-keygen -q -N ""
sudo curl -L https://github.com/atrawog.keys >> /root/.ssh/authorized_keys
