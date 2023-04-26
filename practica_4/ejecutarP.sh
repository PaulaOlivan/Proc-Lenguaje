#!/bin/bash

ant
scp dist/clike.jar a816678@hendrix.cps.unizar.es:~/pleng/
scp -r ../test_propios a816678@hendrix.cps.unizar.es:~/pleng/
ssh a816678@hendrix.cps.unizar.es 'cd pleng; java -jar clike.jar test_propios/prueba1.cl > ensamblado.pcode; ./ensamblador ensamblado; ./maquinap ensamblado'