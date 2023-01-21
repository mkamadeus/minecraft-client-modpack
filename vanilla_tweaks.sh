#!/bin/bash

# check if directory exists
# if not, create directory
if [[ ! -f ./resourcepacks ]]
then
	mkdir resourcepacks
fi

BASE_PATH="https://vanillatweaks.net"
ZIP_PATH=$(curl 'https://vanillatweaks.net/assets/server/zipresourcepacks.php' \
	--silent \
	--location \
	--data-urlencode 'version=1.19' \
	--data-urlencode "packs=$(cat vanilla_tweaks.json)" \
  --compressed | jq -r .link)

DOWNLOAD_LINK="$BASE_PATH$ZIP_PATH"
curl $DOWNLOAD_LINK --output resourcepacks/vt.zip