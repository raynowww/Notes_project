#!/usr/bin/env bash
set -e

echo "Waiting for DB ${DB_HOST}:${DB_PORT}..."
until nc -z "${DB_HOST}" "${DB_PORT}"; do
  sleep 1
done
echo "DB is up"

# миграции + статика
python manage.py migrate --noinput
python manage.py collectstatic --noinput

exec gunicorn notes_project.wsgi:application --bind 0.0.0.0:8000 --workers 3
