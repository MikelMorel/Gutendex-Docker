# Maybe clean alpine? already installing py and pip
FROM ubuntu:16.04
WORKDIR /app

# installing py and pip
RUN apt-get update
#RUN apt install -y python3-pip && pip3 install 
RUN apt install -y python3-pip && pip3 install --upgrade pip==20.3.4
#RUN apt install -y python3-pip --upgrade python && pip3 install --upgrade pip
RUN apt install -y postgresql postgresql-server-dev-9.5

COPY . .
#COPY ./requirements.txt ./
#COPY ./manage.py ./
#--target=./
RUN pip install -r requirements.txt

ENTRYPOINT [ "python3" ]
CMD [ "manage.py" ]
