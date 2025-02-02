echo " BUILD START"
python3.12.7 -m pip install requirements.txt
python3.12.7 manage.py collectstatic --noinput --clear
echo " BUILD END"