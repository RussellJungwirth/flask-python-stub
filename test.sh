#!/usr/bin/env bash
# install requirements to virtual environment
python3 -m venv _venv
./_venv/bin/pip3 install -qqr test-requirements.txt

./_venv/bin/python3 -m pytest
