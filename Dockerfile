# DOCKER-VERSION 0.10.0
FROM        java:8
MAINTAINER  Christophe Labouisse

# Update and install curl that will be needed later
RUN         apt-get -yqq update
RUN apt-get -yqq install curl

# Rest x configuration
ENV RESTX_VERSION 0.33.1
ENV RESTX_USER restx
ENV HOME /var/lib/restx
ENV PATH ${PATH}:${HOME}/.restx

# Creating a restx user and use it from now on
RUN useradd --home ${HOME} --create-home ${RESTX_USER}
USER restx

RUN         curl -Ls http://restx.io/install.sh > /tmp/install-restx.sh
RUN         chmod 700 /tmp/install-restx.sh

RUN         /tmp/install-restx.sh ${RESTX_VERSION} && rm /tmp/install-restx.sh

RUN         restx shell install io.restx:restx-core-shell:${RESTX_VERSION}
RUN         restx shell install io.restx:restx-build-shell:${RESTX_VERSION}
RUN         restx shell install io.restx:restx-specs-shell:${RESTX_VERSION}

EXPOSE 8080
