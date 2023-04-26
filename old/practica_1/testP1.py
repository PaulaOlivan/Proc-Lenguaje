import os
import re
import subprocess

testRoute = "../test"

listaFicheros = os.listdir(testRoute)
#print(listaFicheros)
for fichero in listaFicheros:

    cmd = "java -jar ./dist/clike.jar "+ testRoute+ "/"+ fichero
    output = subprocess.check_output(cmd, shell=True, stderr=subprocess.STDOUT)
    
    for line in output.decode().split('\n'):
        if "ERROR" in line:
            print(f"ERROR en {fichero}: {line}")