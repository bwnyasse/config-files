#!/usr/bin/env bash
ansible-playbook --ask-vault-pass -v -i ../servers/hosts -u root ovh-vps.yml
