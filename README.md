# LeCookBook
Mon CookBook personnel

## Introduction
LeCookBook est mon livre de cuisine. C'est un recueil de mes recettes favorites, ou signatures. Je le partage en espérant qu'il inspirera quelques gourmands, ou motivera des néo-cuisiniers à se lancer.

Etant français originaire du Sud-Ouest, il regroupe majoritairement des recettes d'origine française ou européenne. La plupart ne conviennent pas à une alimentation végane, ou sans-alcool.

## Démarrage rapide

Tapez la commande suivante dans votre terminal, et consultez les recettes :
`make && make && make clean && open LeCookBook.pdf`

## Dépendances
LeCookBook est écrit en langage LaTeX. 
La génération du CookBook nécessite au moins la version~1.4 du [paquet xcookybooky.] (http://www.ctan.org/pkg/xcookybooky)
Le chargement des  polices propriétaires Emerald Font n'est pas nécessaire.

## Install
* Installer la dernière version de LaTeX
* Installer le paquet xcookybooky (déjà présent dans TeXShop ou MikTeX, auquel cas cette étape n'est pas nécessaire).

## Usage

Pour compiler, entrer la commande suivante :
`make`

Afin d'avoir la Table des matières à jour, il est nécessaire de lancer deux fois make :
`make & make`

### Ajouter une nouvelle recette

Dans un terminal, éxecuter le script nouvelle_recette.sh :
`sh nouvelle_recette.sh`

Ou
`./nouvelle_recette.sh Ma nouvelle recette`

Cela va générer un nouveau fichier template Ma_nouvelle_recette.tex dans le dossier recettes.
Compléter les différents items comme souhaités, en commentant/décommentant les parties qui vous
intéressent.

Une fois fait, ajouter  votre nouvelle recette dans la Table des matières dans le
fichier cookbook.tex :s
![Screenshot][/img/readme/cookbook_new_recipe.png]

Et générer à nouveau votre cookbook :
`make fclean && make && make && open LeCookBook.pdf`

## Contributions
Contributeurs bienvenus : N'hésitez pas à ajouter vos nouvelles recettes.
Je me réserve toutefois le droit de ne pas modifier certaines recettes, qui correspondent plus à mes goûts ou à la version qui été préparée dans ma famille.
