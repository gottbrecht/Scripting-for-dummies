#!/bin/bash
url="https://ekstrabladet.dk/rssfeed/all/"
titles=$(curl -s $url | awk -F '<link>|</link>' '/<linkg>/ {print $2}' | sed '1d')
echo "$titles" > titles.txt