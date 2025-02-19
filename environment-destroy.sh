#!/bin/bash
echo "Destroying Vagrant created VM from VirtualBox..."
vagrant destroy -f
echo "Removing machine IDs from SSH cache/known_hosts ..."
ssh-keygen -f "/home/wsl01/.ssh/known_hosts" -R "192.168.56.6"
ssh-keygen -f "/home/wsl01/.ssh/known_hosts" -R "192.168.144.1"
ssh-keygen -f "/home/wsl01/.ssh/known_hosts" -R "192.168.0.21"
