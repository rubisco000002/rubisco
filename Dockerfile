FROM v2fly/v2fly-core:latest

apk add gettext

COPY config.json.tp /root/
ADD startup.sh /startup.sh
RUN chmod +x /startup.sh

CMD /startup.sh


