curl -s https://ekstrabladet.dk/rssfeed/nyheder/ | xmlstarlet sel -t -m '//item/title' -v . -n >> titles.txt
