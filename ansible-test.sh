#!/usr/bin/env bash

docker build -t test-ansible .

docker run --rm -it -t test-ansible sh -c "ansible-pull -K --vault-password-file .vault -U https://github.com/alanphil2k01/ansible-setup.git || bash"
