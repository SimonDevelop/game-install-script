[![version](https://img.shields.io/badge/Version-1.0-brightgreen.svg)](https://github.com/SimonDevelop/game-install-script/releases/tag/1.0)
[![license](https://img.shields.io/badge/License-MIT-blue.svg)](https://github.com/SimonDevelop/game-install-script/blob/master/LICENSE)
# game-install-script
Script shell pour simplifier l'installation de serveurs de jeux steam sous linux.

Pour toutes contributions sur github, merci de lire le document [CONTRIBUTING.md](https://github.com/SimonDevelop/game-install-script/blob/master/CONTRIBUTING.md)


## Pré-requis :
Fonctionne sous Linux basé sous debian/ubuntu, mais d'autres distributions peuvent sans doute l'utiliser.
- Testé sous Linux Debian 8

Vérifiez que vous avez bien installé les packets `wget git curl gzip bzip2 lib32gcc1 lib32stdc++6` avec un `apt-get install wget curl gzip bzip2 lib32gcc1 lib32stdc++6`.

Commencez par télécharger le repository avec `git clone https://github.com/SimonDevelop/game-install-script.git`, rendez-vous dans le dossier puis rendez le script executable avec la commande `chmod +x gameinstall.sh`.


## Execution du script :
Pour l'instant, le script permet juste d'installer un serveur de jeu, vous devez préciser en paramètre le chemin absolut ou vous voulez l'installer, puis en second paramètre l'id du jeu en question.


## Option :
Vous pouvez aussi ajouter en 3éme et 4éme paramètre le nom d'utilisateur et groupe unix pour les permissions du serveur de jeu, le nom d'utilisateur et groupe unix doivent être créés au préalable.

Sâchez qu'il n'est pas obligatoire de le faire, mais si vous utilisez le compte `root` pour éxecuter ce script, celà permet d'éviter d'avoir les droits du serveur uniquement sur ce dernier sans repasser un `chmod` derrière.

Exemple pour un serveur garry's mod : `./gameinstall.sh /home/games/gmodserver/ 4020 monUserUnix groupeUnix`.


## Note :
Attention !
Seul les jeux demandants une authentification `anonymous` à la console steamcmd sont fonctionnels via ce script, vous pouvez retrouver la liste des jeux disponibles avec leur id et le login autorisé sur le site [developer.valvesoftware](https://developer.valvesoftware.com/wiki/Dedicated_Servers_List).
Des mises à jours sont à prévoir, surveillez les [releases](https://github.com/SimonDevelop/game-install-script/releases) !
