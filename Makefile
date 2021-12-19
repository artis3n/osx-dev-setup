#!/usr/bin/env make

.PHONY: lint
lint:
	pipenv run yamllint .
	pipenv run ansible-lint

.PHONY: update
update:
	pipenv update --dev
	pipenv run pre-commit autoupdate
