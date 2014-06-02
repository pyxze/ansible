#!/usr/bin/env bash

apt-get -y install git ansible && echo "127.0.0.1" > /etc/ansible/hosts
git clone https://github.com/pyxze/ansible.git
cd ansible
ansible-playbook common.yml --connection=local
