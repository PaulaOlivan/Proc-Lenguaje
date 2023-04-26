//----------------------------------------------------------------------
//  criba_eratostenes.cl
//----------------------------------------------------------------------

int n;
bool criba[101];

//----------------------------------------------------------------------
int pedir_entero () {
    int n;

    n = 0;
    while (n < 1 || n > 100) {
        print("Dame un numero entre 1 y 100: ");
        read (n);
    }
    return n;
}
//----------------------------------------------------------------------
void escrib_vect (bool v[101]) {
	int i, m;
	bool salir;

    i = 2;
    m = 0;
    salir = false;
    print_ln ("");
    print_ln ("Numeros primos hasta ", n, ": ");
    print_ln ("");
    while (! salir) {
        if (i > n) {
            salir = true;
        }
        else {
            if (v[i]) {
                print_ln (i, " es primo.");
                m = m + 1;
            }
            i = i + 1;
        }
    }
    print_ln ("");
    print_ln ("Hasta ", n, " hay ", m, " números primos.");
}
//--------------------------------------------------------------
void inicializar (bool& v[101]) {
	int i;

    i = 1;
    while (i <= n) {
        v[i] = true;
        i = i + 1;
    }
}
//--------------------------------------------------------------
void eliminar_no_primos (bool& v[101]) {
	int i, j;

    i = 2;
    while (i <= n / 2) {
        if (v[i]) {
            j = 2 * i;
            while (j <= n) {
                v[j] = false;
                j = j + i;
            }
        }
        i = i + 1;
    }
}
//--------------------------------------------------------------
void procesar (bool& v[101]) {
    inicializar (v);
    eliminar_no_primos (v);
    escrib_vect (v);
}
//--------------------------------------------------------------
void main() {
    print_ln ("Criba de Eratóstenes: determinación de qué números son primos hasta un n dado.");
    print_ln ("https://es.wikipedia.org/wiki/Criba_de_Erat%C3%B3stenes");
    print_ln();

    n = pedir_entero ();
    procesar (criba);
}
