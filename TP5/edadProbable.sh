#!/bin/bash

echo "Se le va a pedir su nombre para asi dar un estimativo de la edad de usted"

echo "Ingrese su nombre: "
read  nombre

#Utiliza el curl para la solicitud de la pagina, el -s seria para que sea de manera silenciosa sin
#sin mostrar nada, (informacion de youtube, chatgpt, google a continuacion)
#el jq analiza el dato JSON y el -r seria para que se emita sin comillas,
#.age se utiliza para tener el get del JSON solo de la age (edad)
#Para poder andar el programa tuve que instalar jq
respuesta=$(curl -s "https:/api.agify.io/?name=$nombre")

edad=$(echo "$respuesta" | jq -r '.age')

echo "El nombre "$nombre" tiene la edad probable de "$edad""

