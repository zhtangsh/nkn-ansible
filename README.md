## nkn-ansible

This project provide a set of ansible script to install nkn[https://github.com/nknorg/nkn] to nodes

## Usage
Put your wallet.dat file in path `/nkn/roles/miner/files/wallet.dat`, do not share this file with others.
Then install nkn to your nodes by
```
ansible-playbook -i inventory/hosts.yml playbook/nkn-docker.yml
```

## Community

* [Discord](https://discord.gg/c7mTynX)
* [Telegram](https://t.me/nknorg)
* [Reddit](https://www.reddit.com/r/nknblockchain/)
* [Twitter](https://twitter.com/NKN_ORG)
