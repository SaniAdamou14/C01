#!/bin/bash

# Script : find_string.sh
# Objectif : Rechercher une chaîne littérale dans un fichier
# Auteur : Mahamane Sani Adamou Mahamane


# Lire le nom du fichier
read file
# Lire la chaîne à chercher
read search

# Vérifier l'existence
if [ ! -f "$file" ]; then
    echo "Le fichier $file n'existe pas."
    exit 1
fi

# Compter le nombre d'occurrences (chaîne littérale)
matches=$(grep -F "$search" "$file" | wc -l)

if [ "$matches" -gt 0 ]; then
    echo "La chaîne '$search' a été trouvée dans $file."
else
    echo "La chaîne '$search' n'a pas été trouvée dans $file."
fi
