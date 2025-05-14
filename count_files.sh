#!/bin/bash

# Script : count_files.sh
# Objectif : Compter le nombre de fichiers réguliers dans un répertoire
# Auteur : Mahamane Sani Adamou Mahamane


# Attend l'entrée de l'utilisateur (sans prompt)
read folder

# Vérifie que le dossier existe
if [ ! -d "$folder" ]; then
    echo "Le dossier $folder n'existe pas."
    exit 1
fi

# Compte les fichiers réguliers dans ce dossier (sans sous-dossiers)
count=$(ls -p "$folder" 2>/dev/null | grep -v / | wc -l)

# Affiche le résultat demandé
echo "Le dossier $folder contient $count fichier(s)."
