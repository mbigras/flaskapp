#!/bin/sh
# Script entrypoint.sh runs Gunicorn Python Web Server Gateway Interface (WSGI) server. Gunicorn loads your Flask application.

if [ -z "$PORT" ]
then
	PORT="8080"
fi

if [ -z "$HOST" ]
then
	HOST="0.0.0.0"
fi

if [ -d venv ]
then
	. venv/bin/activate
fi

# Gotcha: Alpine Linux introduces unexpected behavior when you run Gunicorn.
# See https://pythonspeed.com/articles/gunicorn-in-docker/
exec gunicorn \
	--bind $HOST:$PORT \
	--workers=2 --threads=4 --worker-class=gthread \
	--log-file=- \
	app:app \
	;
