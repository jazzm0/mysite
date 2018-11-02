#!/usr/bin/env bash

source venv/bin/activate
python manage.py migrate
python manage.py makemigrations polls
python manage.py sqlmigrate polls 0001
python manage.py migrate