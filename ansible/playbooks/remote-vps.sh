#!/usr/bin/env bash
ansible-playbook --vault-password-file=~/.ansible_pwd -vvvv -i ../servers/hosts --private-key=~/.ssh/id_rsa.pub \
    -K -u bwnyasse remote-vps.yml
