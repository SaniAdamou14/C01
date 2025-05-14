#!/bin/bash

# Script : count_files.sh
# Objectif : Compter le nombre de fichiers réguliers dans un répertoire
# Auteur : Mahamane Sani Adamou Mahamane


# # Lire le nom du dossier depuis l'entrée standard
# read folder

# # Vérifier que le dossier existe
# if [ ! -d "$folder" ]; then
#     echo "Le dossier $folder n'existe pas."
#     exit 1
# fi

# # Initialiser compteur
# count=0

# # Utiliser ls et une boucle pour compter les fichiers
# for item in "$folder"/*; do
#     if [ -f "$item" ]; then
#         count=$((count + 1))
#     fi
# done

# echo "Le dossier $folder contient $count fichier(s)."