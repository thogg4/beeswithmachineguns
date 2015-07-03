FROM python:2.7.9

RUN apt-get update -qq && apt-get install -y apache2-utils

RUN mkdir -p /app
WORKDIR /app

COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt

COPY . /app

ENTRYPOINT ["/app/bees"]
