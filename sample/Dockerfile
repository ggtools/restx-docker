FROM        ggtools/restx-docker:j8-latest
MAINTAINER  Christophe Labouisse

ADD restx-app.jar /tmp/restx-app.jar

RUN restx app grab file:///tmp/restx-app.jar + deps install

CMD cd ${HOME}/.restx/apps/restx-app && restx app run --mode=prod --fg
