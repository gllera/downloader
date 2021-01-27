#!/bin/sh -e

touch /data/.session
aria2c --conf-path=/etc/aria2.conf
lighttpd -D -f /etc/lighttpd/lighttpd.conf
