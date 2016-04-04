FROM          debian:jessie
MAINTAINER    Chris Wessels (https://github.com/xwilders)

ENV           NODE_VERSION="0.10.43" PHANTOMJS_VERSION="2.1.1" IMAGEMAGICK_VERSION="8:6.8.9.9-5"

COPY          includes /tupperware

RUN           sh /tupperware/scripts/bootstrap.sh

EXPOSE        80

ENTRYPOINT    sh /tupperware/scripts/start_app.sh

ONBUILD COPY  ./ /app

ONBUILD RUN   sh /tupperware/scripts/on_build.sh
