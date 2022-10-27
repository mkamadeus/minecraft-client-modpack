#!/bin/bash

MOD_PATH="./mods/*.toml"

tmp=''
for f in $MOD_PATH; do
	tmp="$tmp- $(cat $f | tomlq -r .name)\n"
done

RESULT=$(echo $tmp | tr -d '"')
echo -e $RESULT