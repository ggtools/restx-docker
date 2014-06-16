# DOCKER-VERSION 0.10.0
FROM        java
MAINTAINER  Christophe Labouisse

ENV RESTX_VERSION 0.33.1

RUN         apt-get -yqq update

RUN apt-get -yqq install curl

RUN         curl -Ls http://restx.io/install.sh > /tmp/install-restx.sh
RUN         chmod 700 /tmp/install-restx.sh

RUN         /tmp/install-restx.sh ${RESTX_VERSION} && rm /tmp/install-restx.sh
RUN         restx shell install io.restx:restx-core-shell:${RESTX_VERSION}
RUN         restx shell install io.restx:restx-build-shell:${RESTX_VERSION}
RUN         restx shell install io.restx:restx-specs-shell:${RESTX_VERSION}
