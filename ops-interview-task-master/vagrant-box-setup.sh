#!/bin/bash

# Check if vagrant box already installed
if ! vagrant -v &>/dev/null; then
# echo $?
echo "Vagrant box is not installed, please install to set up."
    exit
fi

# Check if Ubuntu vagrant box is present

if vagrant box list | grep -q "ubuntu/trusty64"; then
    echo " Ubuntu vagrant box already present"
else
    # Create a new directory for Ubuntu vagrant box
    mkdir vagrant/ubuntu
    cd vagrant/ubuntu

    # Add Ubuntu vagrant box
    echo "Adding Ubuntu box"
    vagrant box add ubuntu/trusty64
fi

# Check if vagrantfile is present
if [ -f Vagrantfile ]; then
    # echo $?
    echo "Vagrantfile already present and initialized"
else
    # Initialize vagrant environment
    echo "Initializing Vagrant environment"
    vagrant init ubuntu/trusty64
fi

# Check if Ubuntu machine is running
if vagrant status | grep "running"; then
    echo "Ubuntu machine is already running"
else
    vagrant up
fi

# SSH into the Ubuntu machine
vagrant ssh