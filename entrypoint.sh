#!/bin/sh -l

# copy templates to github directory
mkdir -v -p ${HOME}/.local/share/godot/templates/${GODOT_VERSION}.stable.mono/ 
cp -R /root/.local/share/godot/templates/${GODOT_VERSION}.stable.mono/* ${HOME}/.local/share/godot/templates/${GODOT_VERSION}.stable.mono/

# make export directory
mkdir -v -p $(dirname $3)

# export project
godot --path $1 --export $2 $3 --verbose --quit
