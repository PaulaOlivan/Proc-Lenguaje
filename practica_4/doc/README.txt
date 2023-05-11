Compilador clike.jar (V1.0)
------------------------------
Compilador de lenguaje de CLIKE

Autores                 NIP
Hugo Mateo Trejo        816678
Paula Oliván Usieto     771938


Invocar como:

-------------------------------------------------------------
java -jar dist/clike_4.jar <fichero_fuente_clike> <fichero_código_ensamblador>
-------------------------------------------------------------

En caso de introducir como fichero_fuente_clike un archivo cuyo código no es correcto, léxica, gramática o semánticamente, se mostrará un mensaje de error 
y se abortará la compilación. En caso contrario se monstrará el mensaje: "Compilación finalizada. Se ha generado el fichero fichero_código_ensamblador.pcode".
Este código se podrá ensamblar con la herramienta ensamblador proporcionada en moodle y posteriormente ejecutar con la máquina p disponible en el mismo lugar.


Características generales:
1) No permite funciones anidadas (se ha comentado la parte que lo permite)
2) Usa LOOKAHEAD, aunque es fácilmente transformable en LL(1)
3) En el nivel más alto, se pueden intercalar declaraciones de funciones/procedimientos y declaraciones de variables. No así dentro de una función (ya que no hay anidamiento)
4) No se pueden intercalar instrucciones con declaraciones dentro de una func/proc: primero las declaraciones de variables, luego las instrucciones

