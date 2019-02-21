.PHONY: install
install:
	@ ansible-playbook -i inventory/ms.yml playbook/nkn-azure.yml

.PHONY: install-ali
install-ali:
	@ ansible-playbook -i inventory/ali.yml playbook/nkn-ali.yml

.PHONY: install-do
install-do:
	@ ansible-playbook -i inventory/do.yml playbook/nkn-vultr.yml

.PHONY: check-do
check-do:
	@ ansible-playbook -i inventory/do.yml playbook/nkn-check-docker.yml

.PHONY: install-vultr
install-vultr:
	@ ansible-playbook -i inventory/vultr.yml playbook/nkn-vultr.yml

.PHONY: check-vultr
check-vultr:
	@ ansible-playbook -i inventory/vultr.yml playbook/nkn-check-docker.yml

.PHONY: check-ali
check-ali:
	@ ansible-playbook -i inventory/ali.yml playbook/nkn-check.yml

.PHONY: update
update:
	@ ansible-playbook -i inventory/ms.yml playbook/nkn-azure-update.yml

.PHONY: update-ali
update-ali:
	@ ansible-playbook -i inventory/ali.yml playbook/nkn-ali-update.yml

.PHONY: check
check:
	@ ansible-playbook -i inventory/ms.yml playbook/nkn-check.yml
