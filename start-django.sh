#!/usr/bin/env bash

export POSTGRES_USER=postgres
export POSTGRES_PASSWORD=MYpostgres
export POSTGRES_HOST=127.0.0.1
export POSTGRES_PORT=5432
source venv/bin/activate
python manage.py $1
