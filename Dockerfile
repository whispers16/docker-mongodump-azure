FROM mhart/alpine-node

LABEL maintainer "fabtics@gmail.com"

RUN npm install --global azure-cli

ADD bin/mongodump /
RUN chmod 0755 /mongodump

ENV BACKUP_FILENAME backup
ENV CRON_TIME="0 0 * * *"

ADD backup.sh /
ADD run.sh /
RUN chmod 0755 backup.sh
RUN chmod 0755 run.sh

RUN apk add --update bash

CMD ["bash","/run.sh"]
