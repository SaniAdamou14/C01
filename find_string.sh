#!/bin/bash

# Script : find_string.sh
# Objectif : Recherche une chaîne dans un fichier donné
# Auteur : Mahamane Sani Adamou Mahamane

# Vérification du nombre d'arguments
if [ $# -ne 2 ]; then
    echo "Usage : $0 <fichier> <chaîne>"
    exit 1
fi

# Vérification si le fichier existe
if [ ! -f "$1" ]; then
    echo "Erreur : Le fichier '$1' n'existe pas."
    exit 1
fi

# Recherche de la chaîne avec grep
if grep -q "$2" "$1"; then
    echo "La chaîne '$2' a été trouvée dans $1."
else
    echo "La chaîne '$2' n'a pas été trouvée dans $1."
fi

exit 0