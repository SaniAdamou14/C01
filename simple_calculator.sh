#!/bin/bash

# Script : simple_calculator.sh
# Objectif : Effectue une opération arithmétique sur deux nombres
# Auteur : Mahamane Sani Adamou Mahamane

# Vérification du nombre d'arguments
if [ $# -ne 3 ]; then
    echo "Usage : $0 <nombre1> <nombre2> <opérateur>"
    exit 1
fi

# Vérification si les deux premiers arguments sont des nombres (y compris négatifs)
if ! [[ "$1" =~ ^-?[0-9]+$ && "$2" =~ ^-?[0-9]+$ ]]; then
    echo "Erreur : Les deux premiers arguments doivent être des nombres entiers."
    exit 1
fi

# Vérification de l'opérateur
case "$3" in
    "+")
        result=$(( $1 + $2 ))
        ;;
    "-")
        result=$(( $1 - $2 ))
        ;;
    "*")
        result=$(( $1 * $2 ))
        ;;
    "/")
        if [ $2 -eq 0 ]; then
            echo "Erreur : Division par zéro."
            exit 1
        fi
        result=$(bc <<< "$1 / $2")  # Division flottante pour plus de précision
        ;;
    *)
        echo "Erreur : Opérateur invalide. Utilisez +, -, * ou /."
        exit 1
        ;;
esac

# Affichage du résultat
echo "Résultat : $result"
exit 0