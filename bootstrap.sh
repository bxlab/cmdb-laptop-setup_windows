#!/bin/sh

# Change default shell to bash
sudo chsh -s /bin/bash
/bin/bash
echo "CLICOLOR=1" >> ~/.bash_profile

# This unfortunately pops up a GUI dialog and runs in the background ;(
sudo /usr/bin/xcode-select --install
read -p "Complete the command line tools install and then press enter"

# And this will force the xcode license agreement to come up
sudo xcodebuild

sudo easy_install pip

# Anisble doesn't seem to declare all its dependencies
sudo pip install paramiko PyYAML jinja2 httplib2
sudo pip install ansible

# Get the playbook
git clone https://github.com/bxlab/cmdb-laptop-setup.git

# Run the playbook
cd cmdb-laptop-setup
ansible-playbook main.yml -i localhost, --ask-become-pass
