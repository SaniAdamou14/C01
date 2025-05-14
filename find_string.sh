#!/bin/bash

# Script : find_string.sh
# Objectif : Rechercher une chaîne littérale dans un fichier
# Auteur : Mahamane Sani Adamou Mahamane

# Vérifie si le fichier et la chaîne sont fournis en arguments
read file
read search

# Vérifie si le fichier existe
if grep -F "$search" "$file" >/dev/null; then
  echo "La chaîne '$search' a été trouvée dans $file."
else
  echo "La chaîne '$search' n'a pas été trouvée dans $file."
fi
