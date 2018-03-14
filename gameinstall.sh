#!/bin/bash
## ./gameinstall.sh repository id-game unix-user unix-group

## Vérification de steamcmd
if [ ! -f ${PWD##*/steamcmd.sh} ];then
   curl -sqL 'https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz' | tar zxvf -
   chmod +x steamcmd.sh
fi

## Lancement du script pour la création du serveur de jeu
if [ ! -f "$1" ];then
  if [ ! -f "$2" ];then
    ./steamcmd.sh +login anonymous +force_install_dir $1 +app_update $2 validate +quit
  else
    echo "Un second paramètre est demandé"
  fi
else
  echo "2 paramètres sont demandés"
fi

## Lancement de la mise en place des permissions (si paramètre 3 et 4)
if [ ! -f "$3" ];then
  if [ ! -f "$4" ];then
    chown -R $3:$4 $1
    chmod -R 774 $1
  else
    echo "Un 4ème paramètre est demandé"
  fi
fi
