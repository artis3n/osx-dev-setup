# osx-dev-setup

[![Build Status](https://github.com/artis3n/osx-dev-setup/workflows/Ansible/badge.svg)](https://github.com/artis3n/osx-dev-setup/workflows/Ansible/badge.svg)
![GitHub Pipenv locked Python version (branch)](https://img.shields.io/github/pipenv/locked/python-version/artis3n/osx-dev-setup/main?label=python)

## Usage

Install poetry, then install project dependencies.

```bash
brew install python@3.10 poetry
make install
```

Run the playbook against your local OSX machine:

```bash
make run
```
