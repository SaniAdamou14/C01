#!/bin/bash

# Script : simple_calculator.sh
# Objectif : Effectue une opération arithmétique sur deux nombres
# Auteur : Mahamane Sani Adamou Mahamane

# Vérifie qu'on a bien 3 arguments
if [ $# -ne 3 ]; then
    echo "Usage: $0 <nombre1> <nombre2> <opérateur(+ - * /)>"
    exit 1
fi

num1=$1
num2=$2
op=$3

# Vérifie que les deux premiers sont des entiers
if ! [[ "$num1" =~ ^-?[0-9]+$ ]] || ! [[ "$num2" =~ ^-?[0-9]+$ ]]; then
    echo "Erreur : les deux premiers arguments doivent être des entiers."
    exit 2
fi

# Calcul en fonction de l’opérateur
case "$op" in
    +) result=$((num1 + num2)) ;;
    -) result=$((num1 - num2)) ;;
    \*) result=$((num1 * num2)) ;;
    /)
        if [ "$num2" -eq 0 ]; then
            echo "Erreur : division par zéro."
            exit 3
        fi
        result=$((num1 / num2))
        ;;
    *)
        echo "Erreur : opérateur non supporté. Utilisez +, -, *, /"
        exit 4
        ;;
esac

echo "Résultat : $result"