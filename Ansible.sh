#!/bin/bash

ansible_install_ubuntu () {
    sudo apt update
    sudo apt install  software-properties-common -y
    sudo apt-add-repository ppa:ansible/ansible
    sudo apt update
    sudo apt install ansible -y
}

cat << EOF 
#############################################
#This script is desighned to install 
the lastest version of ansible on ansible 
###############################################
EOF
ansible_install_ubuntu

OS_CHECK () {
    OS_CHECK_SYSTEM="grep ubuntu /etc/os-release"
    if [ "$OS_CHECK_SYSTEM" ]; then 
    cat << EOF
    #############################
    #Ubutu System detected
    #Installing ansible 
    #############################
EOF
sleep 2
ansible_install_ubuntu
    else
    cat << EOF
    #############################
    #You are not using Ubuntu
    # Exiting
    #############################
EOF
    fi

}