#!/usr/bin/env bash
# exit on error

set -o errexit

poetry install

py manage.py collecstatic --no-input
py manage.py migrate
