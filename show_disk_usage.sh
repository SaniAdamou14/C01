#!/bin/bash

# Script : show_disk_usage.sh
# Objectif : Affiche l'utilisation du disque pour le répertoire courant ou un répertoire donné
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

# Affichage de l'utilisation globale du disque
echo "Utilisation globale du disque :"
df -h | head -n 1
df -h "$target_dir" | tail -n 1

# Affichage de l'utilisation détaillée pour le répertoire
echo -e "\nUtilisation du répertoire $target_dir :"
du -sh "$target_dir" 2>/dev/null

exit 0