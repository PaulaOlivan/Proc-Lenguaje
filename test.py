import os
import re
import subprocess
import sys

testRoute = sys.argv[1]

listaFicheros = os.listdir(testRoute)
#print(listaFicheros)
for fichero in listaFicheros:

    cmd = "java -jar ./dist/clike.jar "+ testRoute+ "/"+ fichero+" "+fichero 
    output = subprocess.check_output(cmd, shell=True, stderr=subprocess.STDOUT)
    
    error = False
    for line in output.decode().split('\n'):
        if "ERROR" in line:
            error = True

    if not error:
        print("El programa "+ fichero + " ha sido analizado correctamente")

    else:
        print("El programa "+ fichero + " ha fallado")
        print("Salida del analizador:")
        print(output.decode())