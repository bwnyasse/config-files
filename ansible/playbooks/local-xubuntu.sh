#!/usr/bin/env bash
ansible-playbook --vault-password-file=~/.ansible_pwd -vvvv -i ../servers/hosts \
    -u bwnyasse local-xubuntu.yml
