FROM alpine

RUN apk add --no-cache aria2 lighttpd \
 && addgroup app -g 1000 && adduser app -u 1000 -DHG app

ADD lighttpd.conf /etc/lighttpd/lighttpd.conf
ADD aria2.conf    /etc/
ADD entrypoint.sh /bin/
ADD webui-aria2/docs /www

VOLUME /data
EXPOSE 6800 80

USER app

CMD entrypoint.sh
