#!/bin/sh
export ANSIBLE_PASSWORD="not revealed"
ansible-playbook \
  playbook.yml \
  -i inventory.yml
