FROM python:3.8-slim-buster
ENV PYTHONUNBUFFERED=1

RUN apt-get update && apt-get install --no-install-recommends -y openssh-client curl
RUN /usr/local/bin/python -m pip install --upgrade pip && pip install pyOpenSSL ansible==2.10.1

CMD ["/usr/local/bin/ansible", "--version"]
