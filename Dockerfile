FROM python:3.10.6-alpine3.16

WORKDIR /app

COPY requirements.txt ./

RUN python -m venv venv \
    && /app/venv/bin/python -m pip install --disable-pip-version-check -r requirements.txt

COPY app.py entrypoint.sh ./

ENTRYPOINT ["/app/entrypoint.sh"]
