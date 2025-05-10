#!/bin/bash

# Script : count_files.sh
# Objectif : Compte le nombre de fichiers (non répertoires) dans un dossier
# Auteur : Mahamane Sani Adamou Mahamane

# Vérification du nombre d'arguments
if [ $# -ne 1 ]; then
    echo "Usage : $0 <répertoire>"
    exit 1
fi

# Vérification si le répertoire existe
if [ ! -d "$1" ]; then
    echo "Erreur : Le répertoire '$1' n'existe pas."
    exit 1
fi

# Comptage des fichiers uniquement (pas de sous-répertoires)
file_count=$(find "$1" -maxdepth 1 -type f | wc -l)

# Affichage du résultat
echo "Le dossier $1 contient $file_count fichier(s)."
exit 0