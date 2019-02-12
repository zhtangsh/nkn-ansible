.PHONY: install
install:
	@ ansible-playbook -i inventory/ms.yml playbook/nkn-azure.yml

.PHONY: update
update:
	@ ansible-playbook -i inventory/ms.yml playbook/nkn-azure-update.yml

.PHONY: check
check:
	@ ansible-playbook -i inventory/ms.yml playbook/nkn-check.yml
