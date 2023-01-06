# Convertir un fichier qcow2 en hdd :

```bash
qemu-img convert -f qcow2 -O parallels Rocky-9-GenericCloud-Base.latest.aarch64.qcow2 rocky9.hdd
```

# créer un fichier iso à partir des fichier user-data & meta-data :

```bash
mkisofs -output cloud-init.iso -volid cloudinitdata -joliet -rock {user-data,meta-data}
```

https://developer.hashicorp.com/vagrant/docs/cloud-init/usage
VAGRANT_EXPERIMENTAL="cloud_init,disks"
