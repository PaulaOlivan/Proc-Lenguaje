// Autores: Hugo Mateo Trejo (816678)
//          Paula Oliván Usieto (771938)
// Fecha de creación: 15/03/2023
// Comentario: Test para evaluar la corrección del análisis léxico-semántico
//              Realiza en clike el código de la 2ªpráctica de Algoritmia Básica


int potencia (int base, int exponente){
    int resultado, i;
    resultado = 1;
    i = 0;
    while (i < exponente){
        resultado = resultado * base;
        i = i + 1;
    }
    return resultado;
}

void dondeEstaLaBolita (int profundidad, int i_bolita, int& posicion, char& camino[1024]){
    int nBolas, i, indice_en_profundidad;
    
    nBolas = potencia(2, profundidad) - 1;
    i = 1;

    while (i < profundidad){
        indice_en_profundidad = (i_bolita - 1) % potencia(2, i);

        if (indice_en_profundidad < potencia(2, i-1)){
            posicion = posicion * 2;
            camino[i-1] = 'I';
        }
        else{
            posicion = (posicion * 2)+1;
            camino[i-1] = 'D';
        }

        i = i+1;
    }
}

void pedir_profundidad (int& profundidad) {
    profundidad = 0;
    
    while (profundidad <= 0){
        print ("Escribe un numero positivo que marcara la profundidad del arbol: ");
        read_ln (profundidad);
	}
}

void pedir_bola (int& bola, int profundidad) {
    int nBolas;
    nBolas = potencia(2, profundidad) - 1;
    
    print ("Escribe el numero de bola a localizar y que sea menor o igual al numero de nodos del arbol generado: ");
    read_ln (bola);

    while (bola > nBolas){
        print ("Escribe el numero de bola a localizar y que sea menor o igual al numero de nodos del arbol generado: ");
        read_ln (bola);
	}
}

void main(){
    int posicion, profundidad, bola, i;
    char camino[1024];
        
    posicion = 0;

    pedir_profundidad(profundidad);
    pedir_bola(bola, profundidad);

    dondeEstaLaBolita(profundidad, bola, posicion, camino);
    print_ln("La bolita esta en el nodo del arbol ", posicion);

    print_ln("Camino: ");

    i = 0;
    while (i < profundidad)
    {
        print(camino[i]);
        i = i+1;
    }

    print_ln();

}