FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
  python3.10 \
  python3-pip \
  git \
  build-essential \
  python3-dev \
  python3-yaml \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

COPY feed.py /usr/bin/feed.py

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
