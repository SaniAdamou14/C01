#!/bin/bash

# Script : cli_arguments.sh
# Objectif : Affiche chaque argument passé au script ligne par ligne
# Auteur : Mahamane Sani Adamou Mahamane

# Vérifie la présence d’au moins un argument
if [ $# -eq 0 ]; then
    echo "Usage: $0 <arg1> [arg2] [...]"
    exit 1
fi

# Affiche chaque argument
i=1
for arg in "$@"; do
    echo "Argument $i: $arg"
    i=$((i + 1))
done