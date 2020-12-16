#!/bin/bash
# nouvelle_recette.sh
# 
# Cree une nouvelle fiche de rechette dans le dossier ~/recettes,
# a partir de Template_Recipe.tex
RECETTES_DIR="./recettes"
TEMPLATE_RECIPE="$RECETTES_DIR/Template_Recipe.tex"

if [ $# -eq 0 ] ; then
	read -p "Entrez un nom de recette : " INPUT
	TITLE=$INPUT
elif [ "$1" = "help" ] ; then
	echo "Usage : ./$0 Nom de la Recette"
	echo "Exemple : ./$0 Spaghetti Bolognaise"
	exit 1
else
	TITLE=$*
fi

FILE_NAME=${TITLE// /_} 
NEW_RECIPE="$RECETTES_DIR/$FILE_NAME.tex"

# Create new Recipe File
cp $TEMPLATE_RECIPE $NEW_RECIPE
# Add the title in Recipe File
sed  -i '' s/"Title"/"$TITLE"/g $NEW_RECIPE

exit 1
