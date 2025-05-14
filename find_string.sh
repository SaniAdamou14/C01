#!/bin/bash

# Script : find_string.sh
# Objectif : Rechercher une chaîne littérale dans un fichier
# Auteur : Mahamane Sani Adamou Mahamane


# # Lire le nom du fichier
# read file
# # Lire la chaîne à chercher
# read search

# # Vérifier si le fichier existe
# if [ ! -f "$file" ]; then
#   echo "Le fichier $file n'existe pas."
#   exit 1
# fi
# # Vérifier si la chaîne est vide
# if [ -z "$search" ]; then
#   echo "La chaîne à rechercher ne peut pas être vide."
#   exit 2
# fi
# # Rechercher la chaîne dans le fichier
# if grep -F "$search" "$file" >/dev/null; then
#   echo "La chaîne '$search' a été trouvée dans $file."
# else
#   echo "La chaîne '$search' n'a pas été trouvée dans $file."
# fi
