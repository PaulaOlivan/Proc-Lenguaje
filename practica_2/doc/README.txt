Compilador clike.jar (V1.0)
------------------------------
Análisis léxico y sintáctico

Autores                 NIP
Hugo Mateo Trejo        816678
Paula Oliván Usieto     771938


Invocar como:

-------------------------------------------------------------
java -jar clike.jar <fichero_fuente_clike>
-------------------------------------------------------------

Si se invoca sin parámetros, lee la entrada estándar.


Características generales:
1) No permite funciones anidadas (se ha comentado la parte que lo permite)
2) Usa LOOKAHEAD, aunque es fácilmente transformable en LL(1)
3) En el nivel más alto, se pueden intercalar declaraciones de funciones/procedimientos y declaraciones de variables. No así dentro de una función (ya que no hay anidamiento)
4) No se pueden intercalar instrucciones con declaraciones dentro de una func/proc: primero las declaraciones de variables, luego las instrucciones

