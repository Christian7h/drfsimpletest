#!/usr/bin/env bash
# exit on error

set -o errexit
pip install -r requirements.txt

poetry install

py manage.py collecstatic --no-input
py manage.py migrate
