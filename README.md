# Scripting-for-dummies

Scriptet 'scriptWithDates' henter nyhedsoverskrifter fra Ekstrabladet via deres RSS-feed og samler dem i en .txt-fil.

1) Scriptet kræver XMLStarlet, og skal derfor være installeret på computeren der kører scriptet. Brug commands:

sudo apt-get update
sudo apt-get install xmlstarlet

2) Tjek at det er installeret rigtig med command:
xmlstarlet --version


3) Hvis du skal køre runEveryMinute scriptet, skal du sørge for at cron er installeret:
sudo apt-get update
sudo apt-get install cron