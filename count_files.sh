#!/bin/bash

# Script : count_files.sh
# Objectif : Compter le nombre de fichiers réguliers dans un répertoire
# Auteur : Mahamane Sani Adamou Mahamane


# Lire le nom du dossier
read folder

# Vérifier l'existence
if [ ! -d "$folder" ]; then
    echo "Le dossier $folder n'existe pas."
    exit 1
fi

# Compter les fichiers (non cachés) avec ls|wc -l
count=$(ls "$folder" 2>/dev/null | wc -l)

echo "Le dossier $folder contient $count fichier(s)."