# Book My Ticket
## Installation

### Development
1. Start a virtual env and activate it:
```
python -m venv .venv
```
2. Install required modules:
```
pip install requirements.txt
```
3. Create .env file of the following format:
```
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
EMAIL_ID=
APP_PWD=
```
Get CLIEND_ID and CLIENT_SECRET from google oauth api
EMAIL_ID and APP_PWD from google security settings

4. Set debug settings in .env to 1 and then run the following in root directory:

```
docker-compose up -d build
docker-compose exec python manage.py migrate --noinput
docker-compose down
```

Set debug setting to 0 and restart the container:

```
docker-compose up -d
```

> [!NOTE]
> There is some issue with urls.py that causes a OperationalError in django where it is unable to find the models.
The solution is to migrate the database without creating the model-related urls in urls.py hence the setting debug to 0/1.

5. Test the app at http://localhost:8000

### Production
1. Create .env.prod and .env.prod.dev
Duplicate .env to .env.prod and add a .env.prod.db
```
POSTGRES_USER=superuser
POSTGRES_PASSWORD=123456
POSTGRES_DB=bookmyticket
```

2. First stop the development containers:
```
docker-compose down
```
> [!CAUTION]
> Ensure to NOT add the '-v' flag as it will remove the postgres database volume as well causing the same migration error as in development


3. 

## Walkthrough
https://youtu.be/YzNGsqDOGKg