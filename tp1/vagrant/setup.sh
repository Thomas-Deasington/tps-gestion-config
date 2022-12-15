# init script for Vagrant VMs

# update OS
dnf update -y

# install ansible
dnf install -y ansible

# désactive SELinux
setenforce 0
sed -i 's/SELINUX=enforcing/SELINUX=permissive/g' /etc/selinux/config

# Create an user that has access to root rights
useradd -m -s /bin/bash vagrant
echo vagrant ALL=NOPASSWD:ALL > /etc/sudoers.d/vagrant
