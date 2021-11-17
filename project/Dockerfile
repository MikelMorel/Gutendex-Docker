FROM ubuntu:16.04

# installing py and pip
RUN apt-get update
RUN apt install -y python3-pip && pip3 install --upgrade pip==20.3.4
RUN apt install -y postgresql postgresql-server-dev-9.5
WORKDIR /app

COPY ./requirements.txt ./
RUN pip install --target=/app -r requirements.txt
