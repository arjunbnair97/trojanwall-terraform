#!/bin/bash
    sudo su
    sudo yum update -y
    sudo yum install vim -y
    sudo useradd ansadmin # Edit the user name that is required
    echo zzn3qc^Fefcz | passwd ansadmin --stdin # Edit the user password that is required
    echo "ansadmin        ALL=(ALL)       NOPASSWD: ALL" >> /etc/sudoers # Edit the user name that is required
    sudo sed -i "/^[^#]*PasswordAuthentication[[:space:]]no/c\\PasswordAuthentication yes" /etc/ssh/sshd_config
    sudo service sshd restart
    sudo yum install python3.8 -y
    sudo yum install python3-pip -y
    sudo yum install git -y
    sudo yum install unzip -y
    hostnamectl set-hostname ansible-tower

    cd /home/ansadmin
    git clone https://github.com/arjunbnair97/trojanwall-ansible-engine.git
    mv trojanwall-ansible-engine ansible-workdir

    sudo yum update -y
    sudo yum install https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm -y
    sudo yum install software-properties-common -y
    sudo yum install ansible -y
    echo "centos:zzn3qc^Fefcz" | sudo chpasswd

    echo "centos          ALL=(ALL)       NOPASSWD: ALL" >> /etc/sudoers
    sudo sed -i "/^[^#]*PasswordAuthentication[[:space:]]no/c\\PasswordAuthentication yes" /etc/ssh/sshd_config
    sudo chown centos:centos /home/ansadmin
    sudo chmod 0700 /home/ansadmin
