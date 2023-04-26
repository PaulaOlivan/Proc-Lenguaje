//----------------------------------------------------------------------
//  juego_de_la_vida.cl
//----------------------------------------------------------------------

//------------------------------------------------------------------------
bool colonia[80];
int i, iteraciones, elementos;

//--------------------------------------------------------------------------
void inicializar (bool& colonia[80]) {
    int i;

    i = 0;
    while (i < elementos) {
        colonia[i] = (i % 20) == 0;
        i = i + 1;
    }
}

//--------------------------------------------------------------------------
void inicializar2 (bool& colonia[80]) {
    int i;

    i = 0;
    while (i < 80) {
        colonia[i] = (i >= 37) && (i <= 43);
        i = i + 1;
    }
}
//--------------------------------------------------------------------------
void asignar (bool& colonia[80], bool siguiente[80]) {
    int i;

    i = 0;

    while (i < elementos) {
        colonia[i] = siguiente[i];
        i = i + 1;
    }
}
//--------------------------------------------------------------------------
bool vivira (bool& colonia[80], int i) {
    if (i == 0) {
        return (false);
    }
    else {
        if (i == elementos - 1) {
            return (false);
        }
        else {
            return (!colonia[i] && 
                ((colonia[i - 1] && !colonia[i + 1]) 
                 || (!colonia[i - 1] && colonia[i + 1])
                )
            );
        }
    }
}
//--------------------------------------------------------------------------
bool vivira2 (bool& colonia[80], int i) {
    int vivos;

    vivos = 0;
    if (i > 0) { if (colonia[i-1]) { vivos = vivos + 1; } }
    if (i > 1) { if (colonia[i-2]) { vivos = vivos + 1; } }
    if (i < 79) { if (colonia[i+1]) { vivos = vivos + 1; } }
    if (i < 78) { if (colonia[i+2]) { vivos = vivos + 1; } }

    if (! colonia[i]) {
        return (vivos == 2) || (vivos == 3);
    }
    else {
        return (vivos == 2) || (vivos == 4);
    }
}

//--------------------------------------------------------------------------
void siguientegeneracion (bool& colonia[80]) {
    int i;
    bool siguiente[80];

    i = 0;
    while (i < elementos) {
        siguiente[i] = vivira (colonia, i);
        i = i + 1;
    }
    asignar (colonia, siguiente);
}

//--------------------------------------------------------------------------
void mostrarcolonia (bool colonia[80]) {
    int i;

    i = 0;
    while (i < elementos) {
        if (colonia[i]) {
            print ('*');
        }
        else {
            print (' ');
        }
        i = i + 1;
    }
    print_ln("");
}
//--------------------------------------------------------------------------
void main() {
    print_ln ("Implementación de la versión 1D del Juego de la Vida de Conway.");
    print_ln ("https://en.wikipedia.org/wiki/Conway%27s_Game_of_Life");
    print_ln ("");
    elementos = 80;
    inicializar (colonia);
    mostrarcolonia (colonia);
    i = 1;
    iteraciones = 50;
    while (i <= iteraciones) {
        siguientegeneracion (colonia);
        mostrarcolonia (colonia);
        i = i + 1;
    }
}