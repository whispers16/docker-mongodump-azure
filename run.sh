echo "${CRON_TIME} bash /backup.sh >> /var/log/script.log" > /crontab.conf
usr/bin/crontab  /crontab.conf
echo "=> Running cron job"
exec /usr/sbin/crond -f -l 8