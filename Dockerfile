FROM ubuntu:18.04
ENV HUGO_VERSION 0.49.2
RUN apt update && apt install -y wget
RUN wget -O hugo.deb https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_extended_${HUGO_VERSION}_Linux-64bit.deb && \
    dpkg -i hugo.deb
WORKDIR /site
ADD . /site
