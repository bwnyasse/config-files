#!/usr/bin/env bash
ansible-playbook --vault-password-file=~/.ansible_pwd -vvvv -i ../servers/hosts \
    -K -u bwnyasse la-meche-dore.yml
