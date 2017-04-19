#!/bin/bash
#
# @description  Ping les hosts

ansible all -m ping -i hosts -u ubuntu