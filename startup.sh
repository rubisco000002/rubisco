#!/bin/sh

envsubst < /root/config.json.tp > /root/config.json
# envsubst '\$PORT' < /root/nginx.template.conf > /root/nginx.conf

# get random page from wikipedia
if [[ -e "/root/html/index.html" ]]; then
    echo "index.html exsit, skip genreate index page"
else
    cat /dev/urandom | tr -dc '[:alpha:]' | fold -w ${1:-20} | head -n $((RANDOM/500)) > /root/html/index.html
fi

# Run V2Ray
v2ray -config /root/config.json
