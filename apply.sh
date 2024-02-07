#!/usr/bin/env bash
ansible-galaxy install --role-file=requirements.yaml
ansible-playbook main.yaml
