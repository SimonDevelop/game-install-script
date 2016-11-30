#!/bin/bash
## ./gameinstall repository id-game unix-user unix-group##

if [ ! -f ${PWD##*/steamcmd.sh} ];then
   curl -sqL 'https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz' | tar zxvf -
   chmod +x steamcmd.sh
fi

if [ ! -f "$1" ];then
  if [ ! -f "$2" ];then
    ./steamcmd.sh +login anonymous +force_install_dir $1 +app_update $2 validate +quit
  else
    echo "Un second paramètre est demandé"
  fi
else
  echo "2 paramètres sont demandés"
fi

if [ ! -f "$3" ];then
  if [ ! -f "$4" ];then
    chown -R $3:$4 $1
    chmod -R 775 $1
  else
    echo "Un 4ème paramètre est demandé"
  fi
fi
