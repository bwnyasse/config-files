#!/bin/bash
#
# @description  Lance le playbook vps1

ansible-playbook -i hosts playbooks/local/local.yml -k -vvvv --ask-sudo  --vault-password-file=~/.ansible_pwd -u bwnyasse
