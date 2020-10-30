FROM python:3.8-slim-buster
ENV PYTHONUNBUFFERED=1

RUN /usr/local/bin/python -m pip install --upgrade pip
RUN pip install ansible==2.10.1
