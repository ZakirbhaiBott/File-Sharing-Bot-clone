FROM python:3.8-slim-buster
WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .

RUN cd /

RUN pip3 install -U pip && pip3 install -U -r requirements.txt

RUN mkdir /File-Sharing-Bot

WORKDIR /File-Sharing-Bot

COPY start.sh /start.sh

CMD ["/bin/bash", "/start.sh"]
