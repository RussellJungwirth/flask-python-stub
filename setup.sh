#!/usr/bin/env bash
# install requirements to virtual environment

if [ -e "_venv" ]; then rm -rf _venv; fi
python3 -m venv _venv
./_venv/bin/pip3 install -qqr requirements.txt
