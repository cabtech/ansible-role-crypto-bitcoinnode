lint: .ylint .alint

.alint: .config/ansible-lint.yml [A-z]*/*.yml
	ansible-lint --config .config/ansible-lint.yml
	@touch $@

.ylint: .config/yamllint [A-z]*/*.yml
	yamllint --config-file .config/yamllint .
	@touch $@

push: lint
	@mkdir -p /mnt/hgfs/shared/ansible-role-crypto-bitcoinnode
	rsync -a * /mnt/hgfs/shared/ansible-role-crypto-bitcoinnode

# --------------------------------

clean:
	@/bin/rm -f .alint .ylint
