#!/bin/bash

# Script : simple_calculator.sh
# Objectif : Effectue une opération arithmétique sur deux nombres
# Auteur : Mahamane Sani Adamou Mahamane

read num1 num2 op

# Vérifie que num1 et num2 sont bien des entiers
if ! [[ "$num1" =~ ^-?[0-9]+$ && "$num2" =~ ^-?[0-9]+$ ]]; then
    exit 1
fi

# Calcul selon l'opérateur
case "$op" in
    +) echo "Résultat : $((num1 + num2))" ;;
    -) echo "Résultat : $((num1 - num2))" ;;
    \*) echo "Résultat : $((num1 * num2))" ;;
    /)
        if [ "$num2" -eq 0 ]; then
            exit 2
        fi
        echo "Résultat : $((num1 / num2))"
        ;;
    *) exit 3 ;;
esac