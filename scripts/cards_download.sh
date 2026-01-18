#!/bin/bash

BASEDIR="$(dirname "$0")"
HSJSON="https://api.hearthstonejson.com/v1"

for lang in deDE enUS esES esMX frFR itIT jaJP koKR plPL ptBR ruRU thTH zhCN zhTW; do
	echo "Downloading cards.$lang.json"
	curl -x 127.0.0.1:7890 -L "$HSJSON/latest/$lang/cards.json" -o "$BASEDIR/../HSTracker/Resources/Cards/cardsDB.$lang.json"
done
