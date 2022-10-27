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
  # --data-raw 'packs=%7B%22aesthetic%22%3A%5B%22SplashXpBottle%22%2C%22UniqueDyes%22%2C%22DifferentStems%22%2C%22WarmGlow%22%5D%2C%22lower-and-sides%22%3A%5B%22LowerWarpedNylium%22%2C%22LowerPodzol%22%2C%22LowerSnow%22%2C%22LowerCrimsonNylium%22%2C%22LowerPaths%22%2C%22LowerMycelium%22%2C%22LowerGrass%22%5D%2C%22variation%22%3A%5B%22VariatedBookshelves%22%2C%22VariatedPlanks%22%2C%22VariatedUnpolishedStones%22%2C%22VariatedStone%22%2C%22VariatedTerracotta%22%2C%22VariatedEndStone%22%2C%22VariatedGravel%22%2C%22VariatedBricks%22%2C%22VariatedDirt%22%2C%22RandomCoarseDirtRotation%22%2C%22VariatedCobblestone%22%2C%22RandomMossRotation%22%5D%2C%22utility%22%3A%5B%22VisualSaplingGrowth%22%2C%22BrewingGuide%22%2C%22NoteblockBanners%22%2C%22GroovyLevers%22%2C%22VisualHoney%22%2C%22DirectionalDispensersDroppers%22%2C%22BetterObservers%22%2C%22DirectionalHoppers%22%2C%22StickyPistonSides%22%2C%22Age25Kelp%22%2C%22VisualWaxedCopperItems%22%2C%22VisualInfestedStoneItems%22%2C%22OreBorders%22%2C%22DiminishingTools%22%5D%2C%22unobtrusive%22%3A%5B%22LowerShield%22%2C%22UnobtrusiveSnow%22%2C%22UnobtrusiveRain%22%5D%2C%223d%22%3A%5B%223DDoors%22%2C%223DStonecutters%22%2C%223DTrapdoors%22%2C%223DLadders%22%2C%223DRails%22%2C%223DIronBars%22%2C%223DLilyPads%22%5D%2C%22options-backgrounds%22%3A%5B%22ConcreteBlackBG%22%5D%2C%22fun%22%3A%5B%22GreenAxolotl%22%5D%7D&version=1.19' \

DOWNLOAD_LINK="$BASE_PATH$ZIP_PATH"
curl $DOWNLOAD_LINK --output resourcepacks/vt.zip