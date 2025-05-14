#!/bin/bash

# Script : count_files.sh
# Objectif : Compter le nombre de fichiers réguliers dans un répertoire
# Auteur : Mahamane Sani Adamou Mahamane

# recuperer le nom du dossier
read folder
 # compter le nombre de fichiers
count=0

# Boucle simple sur ls
for item in $(ls "$folder"); do
  if [ -f "$folder/$item" ]; then
    count=$((count + 1))
  fi
done

# Afficher le résultat
echo "Le dossier $folder contient $count fichier(s)."
