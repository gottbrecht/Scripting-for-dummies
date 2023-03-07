#!/bin/sh
# * * * * * ~/GitHub/Scripting-for-dummies/scripts/scriptWithDates.sh

date=$(date +"%H:%M_%d_%m_%Y")
curl -s https://ekstrabladet.dk/rssfeed/nyheder/ | /opt/homebrew/bin/xmlstarlet sel -t -m '//item/title' -v . -n >> /Users/asgertor/GitHub/Scripting-for-dummies/output/News_$date.txt
