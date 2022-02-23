#!/usr/bin/env make

.PHONY: install
install:
	poetry install
	poetry run pre-commit install --install-hooks

.PHONY: run
run:
	poetry run ansible-playbook --ask-become-pass -i inventory main.yml

.PHONY: lint
lint:
	poetry run ansible-lint

.PHONY: update
update:
	poetry update
	poetry run pre-commit autoupdate
