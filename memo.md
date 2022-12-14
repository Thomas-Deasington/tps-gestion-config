# Convertir un fichier qcow2 en hdd :

```bash
qemu-img convert -f qcow2 -O parallels Rocky-9-GenericCloud-Base.latest.aarch64.qcow2 rocky9.hdd
```

# créer un fichier iso à partir des fichier user-data & meta-data :

```bash
mkisofs -output cloud-init.iso -volid cidata -joliet -rock {user-data,meta-data}
```

https://developer.hashicorp.com/vagrant/docs/cloud-init/usage
VAGRANT_EXPERIMENTAL="cloud_init,disks"


localectl set-keymap fr
sudo adduser vagrant
sudo -i
passwd vagrant
vagrant
su - vagrant
mkdir -p .ssh/authorized_keys
chmod 0700 .ssh
chmod 0600 .ssh/authorized_keys

sudo systemctl restart sshd



cloud-init status
sudo cloud-init clean
cloud-init status

# désactiver SELinux
sudo vi /etc/selinux/config
SELINUX=disabled
reboot the machine


# dans la vm
cat /var/log/cloud-init-output.log


# AWX
COMPOSE_TAG=devel make docker-compose