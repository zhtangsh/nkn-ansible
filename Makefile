.PHONY: install-do
install-do:
	@ ansible-playbook -i inventory/do.yml playbook/nkn-docker.yml

.PHONY: check-do
check-do:
	@ ansible-playbook -i inventory/do.yml playbook/nkn-check-docker.yml

.PHONY: install-vultr
install-vultr:
	@ ansible-playbook -i inventory/vultr.yml playbook/nkn-docker.yml

.PHONY: check-vultr
check-vultr:
	@ ansible-playbook -i inventory/vultr.yml playbook/nkn-check-docker.yml

.PHONY: install-hosten
install-hosten:
	@ ansible-playbook -i inventory/hosten.yml playbook/nkn-systemd.yml

.PHONY: check-hosten
check-hosten:
	@ ansible-playbook -i inventory/hosten.yml playbook/nkn-check-systemd.yml

.PHONY: install-ali
install-ali:
	@ ansible-playbook -i inventory/ali.yml playbook/nkn-systemd.yml

.PHONY: check-ali
check-ali:
	@ ansible-playbook -i inventory/ali.yml playbook/nkn-check-systemd.yml
