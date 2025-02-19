#!/bin/bash
export ANSIBLE_CONFIG="$(pwd)/ansible.cfg"
vagrant up
echo "- Vagrant provisioned bare VM in VirtualBox."
echo "Sleeping for 25 seconds before 1st part of Ansible playbook..."
sleep 25
ansible-playbook -u vagrant --connection-password-file='./connection-password-file.txt' --vault-password-file='./vars/.vault_pass' A_pre_ip_change.yml
echo "Sleeping for 70 seconds before 2nd part of Ansible playbook..."
sleep 70
ansible-playbook -u vagrant --connection-password-file='./connection-password-file.txt' --vault-password-file='./vars/.vault_pass' B_post_ip_change.yml
echo "Environment setup completed."