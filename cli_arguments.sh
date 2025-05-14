#!/bin/bash

# Script : cli_arguments.sh
# Objectif : Affiche chaque argument passé au script ligne par ligne
# Auteur : Mahamane Sani Adamou Mahamane

read -a args

i=1
for arg in "${args[@]}"; do
    echo "Argument $i: $arg"
    ((i++))
done
