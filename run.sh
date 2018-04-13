#!/usr/bin/env bash

# please run as sudo !!!

ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook --private-key=/mnt/vagrant/thai-cloudansible.pem -e "type=webservers" provision-ec2.yml
