#!/usr/bin/env bash

docker build -t test-ansible .

docker run --rm -it -t test-ansible ansible-playbook --skip-tags dconf local.yml --ask-become-pass --ask-vault-pass  && bash
