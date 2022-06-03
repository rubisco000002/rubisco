FROM alpine:3.5

RUN apk add --no-cache --virtual .build-deps ca-certificates curl gettext
COPY config.json.tp /root/
ADD startup.sh /startup.sh
RUN chmod +x /startup.sh

CMD /startup.sh


