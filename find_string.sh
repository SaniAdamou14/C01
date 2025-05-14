#!/bin/bash

# Script : find_string.sh
# Objectif : Rechercher une chaîne littérale dans un fichier
# Auteur : Mahamane Sani Adamou Mahamane


# Lire le fichier
read file
# Lire la chaîne à rechercher
read search

# Vérifie que le fichier existe
if [ ! -f "$file" ]; then
    echo "Le fichier $file n'existe pas."
    exit 1
fi

# Utiliser grep pour rechercher la chaîne
if grep -q "$search" "$file"; then
    echo "La chaîne '$search' a été trouvée dans $file."
else
    echo "La chaîne '$search' n'a pas été trouvée dans $file."
fi