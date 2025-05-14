#!/bin/bash

# Script : find_string.sh
# Objectif : Rechercher une chaîne littérale dans un fichier
# Auteur : Mahamane Sani Adamou Mahamane


# Vérifie qu'on a bien deux arguments
if [ $# -ne 2 ]; then
    echo "Usage: $0 <nom_du_fichier> <chaine_a_rechercher>"
    exit 1
fi

file="$1"
search="$2"

# Vérifie que le fichier existe
if [ ! -f "$file" ]; then
    echo "Erreur : le fichier '$file' n'existe pas."
    exit 2
fi

# Recherche la chaîne
if grep -q "$search" "$file"; then
    echo "La chaîne '$search' a été trouvée dans $file."
else
    echo "La chaîne '$search' n'a pas été trouvée dans $file."
fi