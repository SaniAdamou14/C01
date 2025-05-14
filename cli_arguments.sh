#!/bin/bash

# Script : cli_arguments.sh
# Objectif : Affiche chaque argument passé au script ligne par ligne
# Auteur : Mahamane Sani Adamou Mahamane

# Vérifie qu’au moins un argument est passé
if [ $# -eq 0 ]; then
    echo "Usage: $0 <arg1> [arg2] [...]"
    exit 1
fi

# Affiche chaque argument ligne par ligne
i=1
for arg in "$@"; do
    echo "Argument $i: $arg"
    ((i++))
done