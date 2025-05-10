#!/bin/bash

# Script : cli_arguments.sh
# Objectif : Affiche chaque argument passé au script ligne par ligne
# Auteur : Mahamane Sani Adamou Mahamane

# Vérification si des arguments sont passés
if [ $# -eq 0 ]; then
    echo "Aucun argument fourni."
    exit 1
fi

# Compteur pour numéroter les arguments
count=1

# Boucle sur tous les arguments avec $@
for arg in "$@"; do
    echo "Argument $count: $arg"
    ((count++))
done

exit 0