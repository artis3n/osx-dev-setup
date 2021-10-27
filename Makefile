#!/usr/bin/env make

.PHONY: lint
lint:
	pipenv run yamllint .
	pipenv run ansible-lint
