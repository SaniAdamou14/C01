#!/bin/bash

# Script : count_files.sh
# Objectif : Compter le nombre de fichiers réguliers dans un répertoire
# Auteur : Mahamane Sani Adamou Mahamane

# Vérifie si un répertoire a été fourni en argument
if [ -z "$1" ]; then
    echo "Usage: $0 <nom_du_dossier>"
    exit 1
fi

# Compte le nombre de fichiers réguliers dans le répertoire
if [ -d "$1" ]; then
    count=$(find "$1" -type f | wc -l)
    echo "Le dossier $1 contient $count fichier(s)."
else
    echo "Erreur : $1 n'est pas un répertoire valide."
    exit 2
fi