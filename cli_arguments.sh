#!/bin/bash

# Script : cli_arguments.sh
# Objectif : Affiche chaque argument passé au script ligne par ligne
# Auteur : Mahamane Sani Adamou Mahamane

read ligne
i=1

for arg in $ligne; do
    echo "Argument $i: $arg"
    ((i++))
done
