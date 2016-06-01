#!/usr/bin/env bash
ansible-playbook --ask-vault-pass -v -i ../servers/hosts   -u bwnyasse -k --ask-sudo-pass local-xubuntu.yml
