#!/bin/bash
## ./gameinstall repository idgame ##

if [ ! -f "$1" ];then
   mkdir $1
fi

if [ ! -f ${PWD##*/steamcmd.sh} ];then
   curl -sqL 'https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz' | tar zxvf -
fi

chmod +x steamcmd.sh
./steamcmd.sh +login anonymous +force_install_dir $1 +app_update $2 validate +quit
