from vercel_wsgi import handle
from demo.wsgi import application  # Replace 'myproject' with your Django project name

app = handle(application)
