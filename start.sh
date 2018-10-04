#!/bin/bash
/usr/sbin/sshd -f /etc/ssh/sshd_config &
/usr/sbin/nginx -c /etc/nginx/nginx.conf &
sleep infinity
exit 0