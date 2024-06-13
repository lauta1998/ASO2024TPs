#!/bin/bash

numeroAleatorio=$((RANDOM % 100 + 1))

echo "Se va a generar un numero aleatorio entre 1 y 100 el cual tiene que adivinar"


while true;
 do
   echo "Ingrese el numero: "
   read numeroIngresado
     if ((numeroIngresado < numeroAleatorio));
       then
         echo "El numero ingresado es bajo"
     elif ((numeroIngresado > numeroAleatorio));
       then
         echo "El numero ingresado es alto"
     else
       echo "Felicitaciones, ingresaste el numero correcto!"
     break
     fi
 done
