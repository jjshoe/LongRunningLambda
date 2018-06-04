FROM alpine:3.7

COPY counter.sh /usr/bin/counter.sh
RUN chmod 555 /usr/bin/counter.sh

ENTRYPOINT ["/usr/bin/counter.sh"]
