#!/usr/bin/env bash
ansible-playbook --vault-password-file=~/.ansible_pwd -vvvv -i ../servers/hosts  \
    -s -K -u bwnyasse local-xubuntu.yml
