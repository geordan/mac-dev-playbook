#!/usr/bin/env bash
set -eux

EXTRA_VARS="$1"
source venv/bin/activate
ansible-playbook main.yml --ask-become-pass --extra-vars "$EXTRA_VARS"
deactivate

exit 0

# eval "$(ssh-agent -s)"
# ssh-add --apple-use-keychain ~/.ssh/id_rsa
#
# # Install XCode Command Line tools (probably already exists from cloning this repo though)
# xcode-select --install || true
#
# # Install Ansible per https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html
# python3 -m pip install --upgrade pip --user
# python3 -m pip install --user ansible 
# export PATH="~/Library/Python/3.10/bin:$PATH"
#
# # Run Ansible
# ansible-galaxy install -r requirements.yml
# ansible-playbook main.yml -i inventory --ask-become-pass --extra-vars "@$EXTRA_VARS.yml"
#
# exit 0;
