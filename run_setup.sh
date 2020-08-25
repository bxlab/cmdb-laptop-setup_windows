#!/bin/bash

#Get Homebrew and add to path
sh -c "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)"
test -d ~/.linuxbrew && eval $(~/.linuxbrew/bin/brew shellenv)
test -d /home/linuxbrew/.linuxbrew && eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
test -r ~/.bash_profile && echo "eval \$($(brew --prefix)/bin/brew shellenv)" >>~/.bash_profile
echo "eval \$($(brew --prefix)/bin/brew shellenv)" >>~/.profile

# Test Homebrew installation
brew install hello
hello #does this work or is there an error message

# Get Pip and Ansible
sudo apt-get -y install python-pip python-dev libffi-dev libssl-dev
pip install ansible --user
echo 'PATH=$HOME/.local/bin:$PATH' >> ~/.bashrc
source .bashrc

# Get the playbook
git clone https://github.com/bxlab/cmdb-laptop-setup_windows.git

cd cmdb-laptop-setup_windows

# Run the playbook
ansible-playbook main.yml --connection=local -K

# Run cause of some weird git thing
git config --replace commit.gpgsign false
