## nkn-ansible

This project provide a set of ansible script to install nkn[https://github.com/nknorg/nkn] to nodes. This project provide following ways to run nknd as daemon service.
- Via docker
- Via systemd unit service

Currently this project could be used to install/upgrade nodes in following cloud computing service.
- Azure
- Alibaba cloud
- Vultr
- Digital Ocean

## Usage
### Prerequisites
You need manually prepare wallet file, nknc and nknd to corresponding location
- Azure:
  - Put wallet file to `nkn/roles/nkn-azure/files/wallet.dat`
  - Put nknc binary to `nkn/roles/nkn-azure/files/nknc`
  - Put nknd binary to `nkn/roles/nkn-azure/files/nknd`
- Ali:
  - Put wallet file to `nkn/roles/nkn-ali/files/wallet.dat`
  - Put nknc binary to `nkn/roles/nkn-ali/files/nknc`
  - Put nknd binary to `nkn/roles/nkn-ali/files/nknd`
- Vultr:
  - Put wallet file to `nkn/roles/nkn-docker/files/wallet.dat`
- Digital ocean:
  - Put wallet file to `nkn/roles/nkn-docker/files/wallet.dat`

Then you should have an inventory file that holds info of your nodes. A sample host file `inventory/azure.yml` looks like something bellow
```
---
all:
  vars:
    nkn:
      image: zhtangsh/nkn:v0.7.5-alpha
      password: yourPassword
  children:
    centos:
      vars:
        ansible_ssh_port: 22
      hosts:
        47.254.100.100:
          ansible_ssh_user: root
          ansible_ssh_pass: root
```

### Installation

Run following ansible command to install nkn service via systemd service for Azure and Alibaba cloud.

Azure
```
ansible-playbook -i inventory/azure.yml playbook/nkn-azure.yml
```

Alibaba cloud
```
ansible-playbook -i inventory/ali.yml playbook/nkn-ali.yml
```

Run following ansible command to install nkn service via docker container for Vultr and Digital Ocean.

Vultr
```
ansible-playbook -i inventory/vultr.yml playbook/nkn-vultr.yml
```

Digital Ocean

```
ansible-playbook -i inventory/do.yml playbook/nkn-vultr.yml
```

### Upgrade
Upgrade is simple by following steps bellow.
- Replace nknd and nknc under file folder for corresponding VPS platform
- Update nkn version in inventory file.
- Run commands for corresponding VPS platform

Azure
```
ansible-playbook -i inventory/azure.yml playbook/nkn-azure-update.yml
```

Alibaba cloud
```
ansible-playbook -i inventory/ali.yml playbook/nkn-ali-update.yml
```

Vultr
```
ansible-playbook -i inventory/vultr.yml playbook/nkn-vultr.yml
```

Digital Ocean

```
ansible-playbook -i inventory/do.yml playbook/nkn-vultr.yml
```

### Status check
Run following command for status check
```
ansible-playbook -i inventory/ali.yml playbook/nkn-check.yml
```
It will collect information of command `nknc info -s` for all nodes. A sample output looks like bellow.
```
ok: [47.254.133.210] => {
    "msg": "version=v0.7.4-alpha, syncState:SyncStarted, height:230359, relayCount:353"
}
```
## Community

* [Discord](https://discord.gg/c7mTynX)
* [Telegram](https://t.me/nknorg)
* [Reddit](https://www.reddit.com/r/nknblockchain/)
* [Twitter](https://twitter.com/NKN_ORG)
