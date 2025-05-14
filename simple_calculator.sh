#!/bin/bash

# Script : simple_calculator.sh
# Objectif : Effectue une opération arithmétique sur deux nombres
# Auteur : Mahamane Sani Adamou Mahamane

read num1 num2 op

if ! [[ "$num1" =~ ^-?[0-9]+$ && "$num2" =~ ^-?[0-9]+$ ]]; then
    exit 1
fi

case "$op" in
    +) result=$((num1 + num2)) ;;
    -) result=$((num1 - num2)) ;;
    \*) result=$((num1 * num2)) ;;
    /)
        if [ "$num2" -eq 0 ]; then
            exit 2
        fi
        result=$((num1 / num2)) ;;
    *) exit 3 ;;
esac

echo "Résultat : $result"
