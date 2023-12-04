#!/usr/bin/env bash
# exit on error

set -o errexit


py manage.py collecstatic --no-input
py manage.py migrate
