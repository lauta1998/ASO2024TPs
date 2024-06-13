#!/bin/bash

echo "El programa es una calculadora simple, sonde va a ingresar dos numeros y la operacion a reazizar, como ultimo paso se va a mostrar el resultado"

echo "Ingrese el primer numero: "
read numeroUno

echo "Ingrese el segundo numero: "
read numeroDos

echo "Ingrese la operacion a realizar (+, -, *, /): "
read operacion

case $operacion in
  +)
    resultado=$((numeroUno + numeroDos))
  ;;
  -)
    resultado=$((numeroUno - numeroDos))
  ;;
  \*)  #Al colocar * sin "\" lo toma como default (ninguna de las demas opciones)
    resultado=$((numeroUno * numeroDos))
  ;;
  /)
    if [ $numeroDos -ne  0 ];
      then
        resultado=$((numeroUno / numeroDos))
      else
        echo "No se puede dividir por 0"
        exit 1 #El colocar exit 1 cierra el programa para asi no se imprime el echo del resultado final
    fi
  ;;
  *)
    echo "Operador no valido"
    exit 1 #El mismo caso del exit 1 de arriba
 ;;
esac

echo "El resultado de la operacion es: $resultado"
