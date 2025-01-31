web: gunicorn demo.wsgi --log-file
worker: celery -A demo worker -l info -P eventlet