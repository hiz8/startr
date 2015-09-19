#!/usr/bin/env bash

if ! [ `which ansible` ]; then
    wget http://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-6
    sudo rpm --import RPM-GPG-KEY-EPEL-6
    wget http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
    sudo rpm -ivh epel-release-6-8.noarch.rpm
    sudo yum install -y ansible
fi

ssh-add
ansible-playbook -i /vagrant/ansible/hosts /vagrant/ansible/playbook.yml
