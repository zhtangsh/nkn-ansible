.PHONY: install
install:
	@ ansible-playbook -i inventory/ms.yml playbook/nkn-azure.yml

.PHONY: check
check:
	@ ansible-playbook -i inventory/ms.yml playbook/nkn-check.yml
