#!/usr/bin/env bash
# exit on error
set -o errexit

poetry install

python3 manage.py collectstatic --no-input
python3 manage.py migrate

pip install --upgrade pip
pip install --force-reinstall -U setuptools