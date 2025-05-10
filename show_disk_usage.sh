#!/bin/bash

# Script : show_disk_usage.sh
# Objectif : Affiche l'utilisation du disque pour un répertoire
# Auteur : Mahamane Sani Adamou Mahamane

# Si un répertoire est fourni, l'utiliser, sinon utiliser le répertoire courant
if [ $# -eq 1 ]; then
    target_dir="$1"
else
    target_dir="."
fi

# Vérification si le répertoire existe
if [ ! -d "$target_dir" ]; then
    echo "Erreur : Le répertoire '$target_dir' n'existe pas."
    exit 1
fi

# Affichage de l'utilisation du disque
echo "Utilisation du disque pour $target_dir :"
df -h "$target_dir"