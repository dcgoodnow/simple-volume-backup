FROM alpine:latest
COPY backup.cron /etc/cron.d/backup.cron
RUN chmod 0644 /etc/cron.d/backup.cron 
RUN crontab /etc/cron.d/backup.cron
COPY backup.sh /backup.sh
RUN chmod 755 backup.sh
ENTRYPOINT ["crond", "-f"]
