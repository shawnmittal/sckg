# platform = multi_platform_wrlinux,Red Hat Enterprise Linux 7,Red Hat Enterprise Linux 8

if ! rpm -q --quiet "aide" ; then
    yum install -y "aide"
fi

CRONTAB=/etc/crontab
CRONDIRS='/etc/cron.d /etc/cron.daily /etc/cron.weekly /etc/cron.monthly'

if [ -f /var/spool/cron/root ]; then
	VARSPOOL=/var/spool/cron/root
fi

if ! grep -qR '^.*\/usr\/sbin\/aide\s*\-\-check.*|.*\/bin\/mail\s*-s\s*".*"\s*root@.*$' $CRONTAB $VARSPOOL $CRONDIRS; then
	echo '0 5 * * * root /usr/sbin/aide  --check | /bin/mail -s "$(hostname) - AIDE Integrity Check" root@localhost' >> $CRONTAB
fi