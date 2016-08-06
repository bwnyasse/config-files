#!/usr/bin/env bash
ansible-playbook --vault-password-file=~/.ansible_pwd -vvvv -i ../servers/hosts  \
     -K --ask-become-pass -u bwnyasse local-xubuntu.yml
