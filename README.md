[![version](https://img.shields.io/badge/Version-1.1-brightgreen.svg)]()
[![license](https://img.shields.io/badge/License-MIT-blue.svg)]()
# GameInstallScript
Simple script shell pour installer des serveurs de jeux steam sous linux.

Pour toutes contribution sur github, merci de lire le document [CONTRIBUTING.md](https://github.com/Fukotaku/GameInstallScript/blob/master/CONTRIBUTING.md)

## Pré-requis :
Fonctionne sous Linux Debian, mais d'autres distributions peuvent sans doute l'utiliser si les commandes restes les mêmes.
- Testé sous Linux Debian 8

Vérifier que vous avez bien installer les packets `wget git curl gzip bzip2 lib32gcc1 lib32stdc++6` avec un `apt-get install wget curl gzip bzip2 lib32gcc1 lib32stdc++6`.

Commencer par télécharger le repository avec `git clone https://github.com/Fukotaku/GameInstallScript.git`, rendez-vous dans le dossier puis rendez le script executable avec la commande `chmod +x gameinstall.sh`.

## Execution du script :
Pour l'instant, le script permet juste d'installer un serveur de jeu, vous devez préciser en paramètre le chemin absolut ou vous voulez l'installer, puis en second paramètre l'id du jeu en question.

## Option :
Vous pouvez aussi ajouter en 3éme et 4éme paramètre le nom d'utilisateur et groupe unix pour les permissions du serveur de jeu, le nom d'utilisateur et groupe unix doivent être créés au préalable.
Sâchez qu'il n'est pas obligatoire de le faire, mais si vous utilisez le compte root pour éxecuter ce script, celà permet d'éviter d'avoir les droits du serveur uniquement sur ce dernier.

Exemple pour un serveur garry's mod : `./gameinstall.sh /home/games/gmodserver/ 4020 monUserUnix groupeUnix`.

## Note :
Attention !
Seul les jeux demandants une authentification `anonymous` à la console steamcmd sont fonctionnel via ce script, vous pouvez retrouver la liste des jeux disponibles avec leur id et le login autorisé sur le site de [developer.valvesoftware](https://developer.valvesoftware.com/wiki/Dedicated_Servers_List).
Des mises à jours pour l'optimisation du script est à prévoir, surveillez les [releases](https://github.com/Fukotaku/GameInstallScript/releases) !
