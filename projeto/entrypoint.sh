#!/bin/sh

echo "Waiting for MySQL to be ready..."

while ! nc -z $MYSQL_HOST $MYSQL_PORT; do
  sleep 1
done

echo "MySQL is up! Running migrations and starting Django..."

# Run migrations and start Django
python manage.py migrate
python manage.py runserver 0.0.0.0:8000
