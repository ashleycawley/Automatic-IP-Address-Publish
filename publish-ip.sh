#!/bin/bash

WANIP=(`curl -s http://whatismyip.akamai.com/`) # Retrieves current WAN IP address
LOGLOCATION=/tmp/wan-ip.log # Sets the desired location to save the current IP to

echo "$WANIP" > $LOGLOCATION # Saves IP to temporary log file

# Publishes IP to Web Server
scp -o StrictHostKeyChecking=no -P 2223 $LOGLOCATION acawley@ashleycawley.co.uk:~/public_html/ip/wan-ip.html