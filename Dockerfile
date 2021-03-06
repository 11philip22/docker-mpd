FROM philipwold/alpine-tini

RUN apk add --no-cache mpd

COPY mpd.conf /etc/mpd.conf

USER mpd

CMD [ "mpd", "--stdout", "--no-daemon" ]

VOLUME [ "/var/lib/mpd" ]
EXPOSE 6600/tcp
EXPOSE 8000/tcp