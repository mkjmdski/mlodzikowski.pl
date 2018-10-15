FROM python:3.7.0-slim-stretch as hugo_dist_builder
ENV HUGO_VERSION 0.49.2
ENV HUGO_RELEASE https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_extended_${HUGO_VERSION}_Linux-64bit.deb
WORKDIR /site
RUN apt update
RUN apt install -y wget
RUN wget -q -O hugo.deb ${HUGO_RELEASE} && dpkg -i hugo.deb
ADD . .
RUN bash build.sh