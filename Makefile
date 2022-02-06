#!/usr/bin/env make

.PHONY: install
install:
	poetry install

.PHONY: run
run:
	poetry run ansible-playbook -i inventory main.yml

.PHONY: lint
lint:
	poetry run yamllint .
	poetry run ansible-lint

.PHONY: update
update:
	poetry update
	poetry run pre-commit autoupdate
