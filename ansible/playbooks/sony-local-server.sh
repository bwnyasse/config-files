#!/usr/bin/env bash
ansible-playbook --vault-password-file=~/.ansible_pwd -vvvv -i ../servers/hosts  \
    -K -u bwnyasse sony-local-server.yml
