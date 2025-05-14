#!/bin/bash

# Script : find_string.sh
# Objectif : Rechercher une chaîne littérale dans un fichier
# Auteur : Mahamane Sani Adamou Mahamane

read file
read search

if [ ! -f "$file" ]; then
    echo "Le fichier $file n'existe pas."
    exit 1
fi

if grep -q "$search" "$file"; then
    echo "La chaîne '$search' a été trouvée dans $file."
else
    echo "La chaîne '$search' n'a pas été trouvée dans $file."
fi
