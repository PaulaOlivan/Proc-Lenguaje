// Autores: Hugo Mateo Trejo (816678)
//          Paula Oliván Usieto (771938)
// Fecha de creación: 15/03/2023
// Comentario: Test para evaluar la corrección del análisis léxico-semántico
//              Realiza la suma de los elementos que contiene una matriz

void sumarMatriz(int matriz[9]) {
    int suma;
    int i, j;

    suma = 0;

    i = 0;
    while (i < 3) {

        j = 0;
        while (j < 3) {
            suma = suma + matriz[j + i*3];
            j = j + 1;
        }

        i = i + 1;
    }

    print_ln("La suma de los elementos de la matriz es: ", suma);
}

void main() {
    int matriz[9];

    matriz[0] = 1;  
    matriz[1] = 2;
    matriz[2] = 3;
    matriz[3] = 4;
    matriz[4] = 5;
    matriz[5] = 6;
    matriz[6] = 7;
    matriz[7] = 8;
    matriz[8] = 9;


    sumarMatriz(matriz);
}


