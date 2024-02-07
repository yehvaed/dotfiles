#!/usr/bin/env bash

echo ">>> 📦 Install dependecies..."
ansible-galaxy install --role-file=requirements.yaml
echo 

echo ">>> 📦 Apply configuration..."
ansible-playbook main.yaml

echo ">>> 🚀 Shell reloading..."
exec ${SHELL}
