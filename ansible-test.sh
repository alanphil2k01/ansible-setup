#!/usr/bin/env bash

docker build -t test-ansible .

docker run --rm -it -t test-ansible bash -c "ansible-pull --skip-tags dconf -K --vault-password-file .vault -U https://github.com/alanphil2k01/ansible-setup.git || bash"
# docker run --rm -it -t test-ansible bash -c "ansible-playbook --tags go -K --vault-password-file .vault local.yml || bash"
