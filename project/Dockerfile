# Maybe clean alpine? already installing py and pip
FROM ubuntu:16.04
WORKDIR /app

# installing py and pip
RUN apt-get update
#RUN apt install -y python3-pip && pip3 install 
RUN apt install -y python3-pip && pip3 install --upgrade pip==20.3.4
#RUN apt install -y python3-pip --upgrade python && pip3 install --upgrade pip
RUN apt install -y postgresql postgresql-server-dev-9.5


RUN apt-get -y install openssh-client


COPY . .
#COPY ./requirements.txt ./
#COPY ./manage.py ./
#
RUN pip install --target=./ -r requirements.txt


#ADD https://raw.githubusercontent.com/eficode/wait-for/master/wait-for ./
#RUN chmod +x ./wait-for
RUN chmod +x runner.sh

# incorrect syntax
#ENTRYPOINT [ "./wait-for" , "db:5432" , "--" , "./runner.sh" ]


ENTRYPOINT [ "bash" ]
CMD [ "runner.sh" ]
