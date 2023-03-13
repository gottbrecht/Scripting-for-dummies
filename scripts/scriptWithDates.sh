#!/bin/sh
# * * * * * ~/GitHub/Scripting-for-dummies/scripts/scriptWithDates.sh


filename=$(git rev-parse --show-toplevel)/output/News_$(date +"%Y%m%d_%H%M").txt
echo $filename
date=$(date +"%Y%m%d_%H%M")
curl https://ekstrabladet.dk/rssfeed/nyheder/ | xmlstarlet sel -t -m '//item/title' -v . -n >> $filename

# curl -s https://ekstrabladet.dk/rssfeed/nyheder/ | xmlstarlet sel -t -m '//item/title' -v . -n >> $( git rev-parse --show-toplevel)/output/News_$(date +"%H:%M_%d_%m_%Y").txt
