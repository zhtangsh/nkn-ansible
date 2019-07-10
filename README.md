## nkn-ansible

This project provide a set of ansible script to install nkn[https://github.com/nknorg/nkn] to nodes. This project provide following ways to run nknd as daemon service.
- Via docker
- Via systemd unit service

Currently this project is tested to be used with following VPS/Cloud computing service.
- Alibaba cloud
- Vultr
- Digital Ocean
- Hosten

## Usage
### Prerequisites
You need manually prepare wallet file, nknc and nknd to corresponding location

Install nkn with systemd
  - Put wallet file to `nkn/roles/nkn-systemd/files/wallet.dat`
  - Put nknc binary to `nkn/roles/nkn-systemd/files/nknc`
  - Put nknd binary to `nkn/roles/nkn-systemd/files/nknd`

Install nkn with docker
  - Put wallet file to `nkn/roles/nkn-docker/files/wallet.dat`

Then you should have an inventory file that holds info of your nodes. A sample host file `inventory/host.yml` looks like something bellow
```
---
all:
  vars:
    version: v1.0.1b-beta
    arch: linux-amd64
    nkn:
      image: zhtangsh/nkn:{{version}}
      binary: https://github.com/nknorg/nkn/releases/download/{{ version }}/{{ arch }}.zip
      addr: NKNP9dmeY9cuWdYkJzRkFcdJGrpWyGmJWrrA
      batchSize: 256
  children:
    centos:
      vars:
        ansible_ssh_port: 22
      hosts:
        135.181.245.82:
          ansible_ssh_user: root
          ansible_ssh_pass: root
```

### Installation

Run following ansible command to install nkn service via systemd service.

Alibaba cloud with inventory file `inventory/ali.yml`

```
ansible-playbook -i inventory/ali.yml playbook/nkn-systemd.yml
```

Hosten with inventory file `inventory/hosten.yml`

```
ansible-playbook -i inventory/hosten.yml playbook/nkn-systemd.yml
```

Run following ansible command to install nkn service via docker.

Vultr with inventory file `inventory/vultr.yml`
```
ansible-playbook -i inventory/vultr.yml playbook/nkn-docker.yml
```

Digital Ocean with inventory file `inventory/do.yml`

```
ansible-playbook -i inventory/do.yml playbook/nkn-docker.yml
```

### Status check

For nkn installed with systemd, run following command to perform status check
```
ansible-playbook -i inventory/ali.yml playbook/nkn-check-systemd.yml
```

For nkn installed with docker, run following command to perform status check
```
ansible-playbook -i inventory/vultr.yml playbook/nkn-check-docker.yml
```


This check script will collect infomation via `nknc info -s`. A sample output looks like bellow.

```
ok: [95.179.156.213] => {
    "msg": "version=v0.7.6-alpha, syncState:PersistFinished, height:625034, relayCount:19.9033, upTime:22h56m3s"
}
ok: [95.179.156.213] => {
    "msg": "Mined 0"
}
```
## Community

* [Discord](https://discord.gg/c7mTynX)
* [Telegram](https://t.me/nknorg)
* [Reddit](https://www.reddit.com/r/nknblockchain/)
* [Twitter](https://twitter.com/NKN_ORG)
