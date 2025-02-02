echo "BUILD START"

# Install dependencies
python3.9 -m pip install -r requirements.txt

mkdir -p staticfiles_build

# Collect static files
python3.9 manage.py collectstatic --noinput --clear

echo "BUILD END"
