import os
import re
import subprocess
import sys

testRoute = sys.argv[1]

listaFicheros = os.listdir(testRoute)
#print(listaFicheros)
for fichero in listaFicheros:

    cmd = "java -jar ./dist/clike.jar "+ testRoute+ "/"+ fichero
    output = subprocess.check_output(cmd, shell=True, stderr=subprocess.STDOUT)
    
    error = False
    for line in output.decode().split('\n'):
        if "ERROR" in line:
            error = True

    #print("El programa "+ fichero + " ha fallado")
    print("Salida del analizador en el programa ", fichero, " :")
    print(output.decode())