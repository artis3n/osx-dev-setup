#!/usr/bin/env make

.PHONY: install
	poetry install

.PHONY: lint
lint:
	poetry run yamllint .
	poetry run ansible-lint

.PHONY: update
update:
	poetry update
	poetry run pre-commit autoupdate
