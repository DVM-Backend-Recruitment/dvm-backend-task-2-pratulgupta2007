# Book My Ticket
## Installation
1. Start a virtual env and activate it:
'''
python -m venv .venv
'''
2. Install required modules:
'''
pip install requirements.txt
'''
3. Create .env file of the following format:
'''
CLIENT_ID=
CLIENT_SECRET=
DEBUG=
SECRET_KEY=
DJANGO_ALLOWED_HOSTS=localhost 127.0.0.1 [::1]
DATABASE=postgres
SQL_ENGINE=django.db.backends.postgresql
SQL_DATABASE=
SQL_USER=
SQL_PASSWORD=
SQL_HOST=db
SQL_PORT=5432
'''
Get CLIEND_ID and CLIENT_SECRET from google oauth api

## Walkthrough
https://youtu.be/YzNGsqDOGKg