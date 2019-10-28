FROM ubuntu:18.04

RUN apt-get update
RUN apt-get install -y python python-pip
RUN mkdir /opt/app

COPY src/* /opt/app/ 
COPY requirements.txt /opt/app/
RUN pip install -r /opt/app/requirements.txt
COPY docker-entrypoint.sh /
#ENTRYPOINT "/docker-entrypoint.sh"

