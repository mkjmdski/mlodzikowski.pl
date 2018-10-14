FROM ubuntu:18.04
ENV HUGO_VERSION 0.49.2
RUN apt update && apt install -y wget
RUN wget https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_${HUGO_VERSION}_Linux-64bit.deb && \
    dpkg -i hugo_${HUGO_VERSION}_Linux-64bit.deb
WORKDIR /site
ADD . /site
