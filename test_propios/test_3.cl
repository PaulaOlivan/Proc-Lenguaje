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
            suma = suma + matriz[i*j];
            j = j + 1;
        }

        i = i + 1;
    }

    println("La suma de los elementos de la matriz es: ", suma);
}

int main() {
    int matriz[10];

    matriz[0] = 1;   
    matriz[2] = 2;
    matriz[3] = 3;
    matriz[4] = 4;
    matriz[5] = 5;
    matriz[6] = 6;
    matriz[7] = 7;
    matriz[8] = 8;
    matriz[9] = 9;

    sumarMatriz(matriz);

    return 0;
}


