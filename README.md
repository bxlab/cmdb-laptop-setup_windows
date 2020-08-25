# Windows 10 Development Ansible Playbook

Playbook for configuring a Windows 10 laptop for Johns Hopkins CMDB QBB, adapted from https://github.com/bxlab/cmdb-laptop-setup

## First, set up Bash Shell
If Windows 10 machine has a 64-bit processor, follow [these directions](https://www.geeksforgeeks.org/use-bash-shell-natively-windows-10/)

## Run `run_setup.sh` to complete the following steps

### Install Brew
References [here](https://brew.sh/), [here](https://medium.com/@edwardbaeg9/using-homebrew-on-windows-10-with-windows-subsystem-for-linux-wsl-c7f1792f88b3), and [here](https://docs.brew.sh/Homebrew-on-Linux#install)


### Install Pip & Ansible
Reference [here](https://www.jeffgeerling.com/blog/2017/using-ansible-through-windows-10s-subsystem-linux)

### Git clone this repository with the playbook

### Run the playbook
* Homebrew apps
* conda packages ---- **Please type yes for conda init**; no longer includes ggplot and bokeh in second install command
* get data --- fixed to include dropbox file
