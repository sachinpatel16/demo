#!/bin/bash

echo "BUILD START"

# Install pip if missing
python3.9 -m ensurepip --default-pip

# Upgrade pip
python3.9 -m pip install --upgrade pip

# Install dependencies
python3.9 -m pip install -r requirements.txt

# Ensure staticfiles_build directory exists
mkdir -p staticfiles_build

# Collect static files
python3.9 manage.py collectstatic --noinput --clear --verbosity 3

# Debug: Check if static files exist
ls -lah staticfiles_build

echo "BUILD END"
