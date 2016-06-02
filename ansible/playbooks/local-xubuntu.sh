#!/usr/bin/env bash
ansible-playbook --ask-vault-pass -vvvv -i ../servers/hosts -s  -u bwnyasse -k --ask-sudo-pass local-xubuntu.yml
