#!/bin/bash

# Script : show_disk_usage.sh
# Objectif : Affiche l'utilisation du disque pour un répertoire donné ou courant
# Auteur : Mahamane Sani Adamou Mahamane

# Affiche l'utilisation du disque pour tous les systèmes montés
echo "Utilisation globale du disque :"
df -h

echo
echo "Utilisation du répertoire courant :"
du -sh . 2>/dev/null