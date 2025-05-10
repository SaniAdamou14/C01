#!/bin/bash

# Script : count_files.sh
# Objectif : Compte le nombre de fichiers dans un répertoire donné en argument
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

# Comptage des fichiers (uniquement les fichiers, pas les sous-répertoires)
file_count=$(ls -l "$1" | grep ^- | wc -l)

# Affichage du résultat
echo "Le dossier $1 contient $file_count fichier(s)."
exit 0