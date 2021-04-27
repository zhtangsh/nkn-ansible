.PHONY: install
install:
	@ ansible-playbook -i inventory/host.yml playbook/nkn-systemd.yml

.PHONY: update
update:
	@ ansible-playbook -i inventory/host.yml playbook/nkn-systemd-update.yml

.PHONY: check
check:
	@ ansible-playbook -i inventory/node.yml playbook/nkn-check-systemd.yml
