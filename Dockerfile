FROM python:3.8-slim-buster

RUN apt update && apt upgrade -y
RUN apt install git -y
COPY requirements.txt /requirements.txt

RUN cd File-Sharing-Bot
RUN pip3 install -U pip && pip3 install -U -r requirements.txt
RUN mkdir /app
WORKDIR /app
COPY python3 main.py
CMD python3 main.py
