.PHONY: install
install:
	@ ansible-playbook -i inventory/ms.yml playbook/nkn-azure.yml

.PHONY: install-ali
install-ali:
	@ ansible-playbook -i inventory/ali.yml playbook/nkn-ali.yml

.PHONY: check-ali
check-ali:
	@ ansible-playbook -i inventory/ali.yml playbook/nkn-check.yml

.PHONY: update
update:
	@ ansible-playbook -i inventory/ms.yml playbook/nkn-azure-update.yml

.PHONY: check
check:
	@ ansible-playbook -i inventory/ms.yml playbook/nkn-check.yml
