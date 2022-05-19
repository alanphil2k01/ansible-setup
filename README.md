# Ansible Setup

## Run
Add vault password to .vault file
```sh
echo "VAULT_PASS" >> .vault
```
Install ansible on fedora
```sh
sudo dnf update -y
sudo dnf install ansible -y
```
Run ansible-pull
```sh
ansible-pull --ask-become-pass --vault-password-file .vault -U https://github.com/alanphil2k01/ansible-setup.git
```
