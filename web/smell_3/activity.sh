#!/bin/sh
PASS=$(cat /pass.txt)

trap "exit 0" SIGINT SIGTERM

while true; do
    sleep 0.5
    curl -su "admin:$PASS" "https://server/meme.jpg" > /dev/null
done
