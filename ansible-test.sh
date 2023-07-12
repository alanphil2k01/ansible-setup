#!/usr/bin/env bash

docker build -t test-ansible .

docker run --rm -it -t test-ansible bash -c "ansible-pull --skip-tags dconf,xfconf -K --vault-password-file .vault -U https://github.com/alanphil2k01/ansible-setup.git && bash"
# docker run --rm -it -t test-ansible bash -c "ansible-playbook --skip-tags dconf,xfconf --become-password-file .become --vault-password-file .vault local.yml && bash"
