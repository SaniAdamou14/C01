#!/bin/bash

# Script : show_disk_usage.sh
# Objectif : Affiche l'utilisation du disque pour un répertoire donné ou courant
# Auteur : Mahamane Sani Adamou Mahamane

# Affiche l'utilisation du disque (espace global)
echo "Utilisation du disque (globale) :"
df -h 2>/dev/null || echo "Commande df non disponible."

echo ""

# Affiche l’utilisation du répertoire courant
echo "Utilisation du disque (répertoire courant) :"
du -sh . 2>/dev/null || echo "Commande du non disponible."