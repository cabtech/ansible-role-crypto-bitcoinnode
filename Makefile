lint: .ylint .alint

.alint: .config/ansible-lint.yml [A-z]*/*.yml
	uv run ansible-lint --config .config/ansible-lint.yml
	@touch $@

.ylint: .config/yamllint [A-z]*/*.yml
	uv run yamllint --config-file .config/yamllint .
	@touch $@

push: lint
	@mkdir -p /mnt/hgfs/shared/ansible-role-crypto-bitcoinnode
	rsync -a * /mnt/hgfs/shared/ansible-role-crypto-bitcoinnode

# --------------------------------

clean:
	@/bin/rm -f .alint .ylint

# --------------------------------

init-uv:
	uv python install 3.14
	uv init
	uv python pin python3.14
	uv add -r    requirements.raw
	uv export -o requirements.txt > /dev/null

update-uv:
	uv add -r    requirements.raw
	uv export -o requirements.txt > /dev/null
