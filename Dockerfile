# DOCKER-VERSION 0.10.0
FROM        dockerfile/java
MAINTAINER  Frédéric Camblor

RUN         apt-get update

RUN         curl -Ls http://restx.io/install.sh > /tmp/install-restx.sh
RUN         chmod 700 /tmp/install-restx.sh

RUN         /tmp/install-restx.sh 0.33.1 && rm /tmp/install-restx.sh
RUN         restx shell install io.restx:restx-core-shell:0.33.1
RUN         restx shell install io.restx:restx-build-shell:0.33.1
RUN         restx shell install io.restx:restx-specs-shell:0.33.1

