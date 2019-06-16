FROM debian:stretch-slim as generator
ENV HUGO_VERSION 0.49.2
ENV HUGO_RELEASE https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_extended_${HUGO_VERSION}_Linux-64bit.deb
WORKDIR /site
RUN apt-get update \
    && apt-get install -y \
        wget \
        gettext-base \
    && wget -q -O hugo.deb ${HUGO_RELEASE} \
    && dpkg -i hugo.deb \
    && apt-get remove -y wget

FROM generator as local_server
RUN apt-get install -y nginx
RUN rm -rf /var/www/html && ln -s /site/public /var/www/html
CMD ["nginx", "-g", "daemon off;"]