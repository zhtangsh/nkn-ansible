.PHONY: install
install:
	@ ansible-playbook -i inventory/add.yml playbook/nkn-systemd.yml

.PHONY: check
check:
	@ ansible-playbook -i inventory/node.yml playbook/nkn-check-systemd.yml
