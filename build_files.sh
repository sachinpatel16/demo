#!/bin/bash

echo "BUILD START"

# Install pip if missing
python3.9 -m ensurepip --default-pip

# Upgrade pip
python3.9 -m pip install --upgrade pip

# Install dependencies from requirements.txt
python3.9 -m pip install -r requirements.txt

# Ensure the staticfiles_build directory exists
mkdir -p staticfiles

# Collect static files (ensure it's pointing to the correct directory)
python3.9 manage.py collectstatic --noinput --clear --verbosity 3

# Run migrations
python3.9 manage.py migrate

# Debug: List files in staticfiles_build
ls -lah staticfiles_build

echo "BUILD END"
