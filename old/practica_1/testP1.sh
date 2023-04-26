#!/bin/bash

for fichero in ../test/*
do
	error = $(java -jar ./dist/clike.jar $fichero | grep ERROR)
	
	if [error != ""]
	then
		echo "Error en $fichero"
	fi
done
