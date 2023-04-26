//----------------------------------------------------------------------
//  reinas_ajedrez.cl
//----------------------------------------------------------------------


int tamano_tablero, tablero[1000], reinas[1000];
int nreinas, fila, columna, f, c;

//------------------------------------------------------------------------
int min (int x, int y) {
	if (x > y) { return (y); } else { return (x); }
}

//------------------------------------------------------------------------
int max (int x, int y) {
	if (x > y) { return (x);} else { return (y); }
}

//------------------------------------------------------------------------
void linea () {
	print_ln ("");
}
//------------------------------------------------------------------------
int sitio (int fila, int columna) {
	return (((fila - 1) * tamano_tablero) + columna - 1);
}

//------------------------------------------------------------------------
int componente (int& tablero[1000], int fila, int columna) {
	return (tablero[sitio (fila, columna)]);
}

//------------------------------------------------------------------------
bool ocupada (int& tablero[1000], int fila, int columna) {
	return (tablero[sitio (fila, columna)] > 0);
}
//------------------------------------------------------------------------
void asignar_componente (int& tablero[1000], int fila, int columna, int valor) {
	tablero[sitio (fila, columna)] = valor;
}
//------------------------------------------------------------------------
void marcar_componente (int& tablero[1000], int fila, int columna) {
	tablero[sitio (fila, columna)] = tablero[sitio (fila, columna)] + 1;
}
//------------------------------------------------------------------------
void desmarcar_componente (int& tablero[1000], int fila, int columna) {
	tablero[sitio (fila, columna)] = tablero[sitio (fila, columna)] - 1;
}
//------------------------------------------------------------------------
void colocar_reina (int fila, int columna) {
	int f, c;

	marcar_componente (reinas, fila, columna);

	f = 1;
	while (f <= tamano_tablero) {
		marcar_componente (tablero, f, columna);
		f = f + 1;
	}

	c = 1;
	while (c <= tamano_tablero) {
		marcar_componente (tablero, fila, c);
		c = c + 1;
	}

	f = fila;
	c = columna;
	while ((f > 1) && (c > 1)) {
		f = f - 1;
		c = c - 1;
	}

	while ((f <= tamano_tablero) && (c <= tamano_tablero))  {
		marcar_componente (tablero, f, c);
		f = f + 1;
		c = c + 1;
	}

	f = fila;
	c = columna;
	while ((f > 1) && (c < tamano_tablero)) {
		f = f - 1;
		c = c + 1;
	}

	while ((f <= tamano_tablero) && (c >= 1)) {
		marcar_componente (tablero, f, c);
		f = f + 1;
		c = c - 1;
	}
}
//------------------------------------------------------------------------
void iniciar_tablero () {
	int f,c;

	f = 1;
	while (f <= tamano_tablero) {
		c = 1;
		while (c <= tamano_tablero) {
			asignar_componente (tablero, f, c, 0);
			asignar_componente (reinas, f, c, 0);
			c = c + 1;
		}
		f = f + 1;
	}
}
//------------------------------------------------------------------------
void mostrar_tablero (int& tablero[1000]) {
	int f,c;

	linea ();
	print_ln ("Esta es una solución:");
	linea ();
	f = 1;
	while (f <= tamano_tablero) {
		c = 1;
		while (c <= tamano_tablero) {
			if (componente (tablero, f,c) > 0) {
				print (" o");
			}
			else { 
				print (" .");
			}
      		c = c + 1;
		}
		linea ();
    	f = f + 1;
	}
}
//------------------------------------------------------------------------
bool libre (int& fila, int& columna) {
	bool endal;

    fila = 1;
    columna = 1;
    endal = false;
    while (!endal) {
        if (fila > tamano_tablero) {
        	endal = true;
        }
        else {
        	if (columna > tamano_tablero) {
        		columna = 1;
        		fila = fila + 1;
	        }
	        else {
	        	if (ocupada (tablero, fila, columna)) {
	        		columna = columna + 1;
		        }
		        else {
		        	endal = true;
		        }
	        }
        }
    }
    return (fila <= tamano_tablero);
}
//------------------------------------------------------------------------
void main() {
	tamano_tablero = 8;
    
    print_ln ("Este programa intenta colocar ", tamano_tablero, " reinas en un tablero de ajedrez de ", tamano_tablero, '*', tamano_tablero, " sin que se ataquen.");

    fila = 1;
    nreinas = 0;
    while ((fila <= tamano_tablero) && (nreinas < tamano_tablero)) {
        columna = 1;
        while ((columna <= tamano_tablero) && (nreinas < tamano_tablero)) {
            nreinas = 1;
            iniciar_tablero ();
            colocar_reina (fila, columna);
            while ((nreinas < tamano_tablero) && libre (f, c)) {
                colocar_reina (f, c);
                nreinas = nreinas + 1;
            }
            if (nreinas == tamano_tablero) {
                mostrar_tablero (reinas);
            }
            columna = columna + 1;
        }
        fila = fila + 1;
    }
    print_ln ("");
}