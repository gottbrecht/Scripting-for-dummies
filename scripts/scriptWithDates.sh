#!/bin/sh
# * * * * * ~/GitHub/Scripting-for-dummies/scripts/scriptWithDates.sh


# filename/path defineres, der hvor vores news headlines gemmes i en tekstfil med dato/timestamp
filename=$(git rev-parse --show-toplevel)/output/News_$(date +"%Y%m%d_%H%M").txt


# Vi kører curl commanden, piper det igennem XMLStarlet for at processere XML filen og gemmer det i $filename som en .txt fil
curl https://ekstrabladet.dk/rssfeed/nyheder/ | xmlstarlet sel -t -m '//item/title' -v . -n >> $filename

