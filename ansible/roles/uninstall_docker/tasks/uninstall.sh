#!/usr/bin/env bash
sudo apt-get remove docker-engine && \
sudo apt-get remove --auto-remove docker-engine && \
sudo apt-get purge docker-engine && \
sudo pip uninstall docker-compose
