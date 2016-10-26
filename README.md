# GameInstallScript
Simple script shell pour installer des serveurs de jeux steam sous linux.

## Pré-requis :
Fonctionne sous Linux Debian/Ubuntu, mais d'autres distributions peuvent sans doute l'utiliser si les commandes restes les mêmes.
Vérifier que vous avez bien installer le packet `lib32gcc1` avec un `apt-get install lib32gcc1`.
Utiliser un utilisateur non root pour l'execution du script.
Commencer par télécharger le script avec `wget https://github.com/Fukotaku/GameInstallScript/blob/master/gameinstall.sh`, puis rendez-le executable avec la commande `chmod +x gameinstall.sh`.

## Execution du script :
Pour l'instant, le script permet juste d'installer un serveur de jeu, vous devez préciser en paramètre le chemin absolut ou vous voulez installer votre serveur de jeu, puis en second paramètre l'id du jeu en question.

Exemple pour un serveur garry's mod : `./gameinstall.sh /home/games/gmodserver/ 4020`.

## Note :
Attention !
Seul les jeux demandants une authentification `anonymous` à la console steamcmd sont fonctionnel via ce script, vous pouvez retrouver la liste des jeux disponibles avec leur id et le login autorisé sur le site de [developer.valvesoftware](https://developer.valvesoftware.com/wiki/Dedicated_Servers_List).
Des mises à jours pour l'optimisation du script est à prévoir, surveillez les [releases](https://github.com/Fukotaku/GameInstallScript/releases) !
