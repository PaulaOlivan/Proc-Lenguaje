//----------------------------------------------------------------------
//  quicksort.cl
//----------------------------------------------------------------------

int n, t[20], iteraciones;

//--------------------------------------------------------------------
void inicializar (int& t[20]) {
	int i;

	i = 0;
	while (i < n) {
		t[i] = n - i;
		i = i + 1;
	}
}
//--------------------------------------------------------------------
void mostrar (int t[20]) {
	int i;

	i = 0;
	while (i < n) {
		print(t[i], " ");
		i = i + 1;
	}
	print_ln("");
}
//--------------------------------------------------------------------
void intercambiar (int& i, int& j) {
	int k;

	k = i;
	i = j;
	j = k;
}
//--------------------------------------------------------------------
void ordenar (int& i, int& j) {
	if (i > j) {
		intercambiar(i, j);
	}
}
//--------------------------------------------------------------------
void divide (int& t[20], int izq, int der, int& me) {
	int p,k;

	p = t[izq];
	k = izq;
	me = der + 1;
	k = k + 1;
	while ((t[k] <= p) && (k < der)) {
		k = k + 1;
	}
	me = me - 1;
	while (t[me] > p) {
		me = me - 1;
	}
	while (k < me) {
		intercambiar(t[k], t[me]);
		k = k + 1;
		while (t[k] <= p) {
			k = k + 1;
		}
		me = me - 1;
		while (t[me] > p) {
 			me = me - 1;
		}
	}
	intercambiar(t[izq], t[me]);
}
//--------------------------------------------------------------------
void quicksort (int& t[20], int izq, int der) {
	int me;

	if (der > izq) {
		mostrar(t);
		if (der - izq == 1) {
			ordenar(t[izq], t[der]);
		}
		else {
			divide(t, izq, der, me);
			quicksort(t, izq, me - 1);
			quicksort(t, me + 1, der);
			iteraciones = iteraciones + 1;
		}
	}
}
//--------------------------------------------------------------------
void main() {
	print ("Ilustración del funcionamiento del algoritmo ");
	print_ln ("quicksort para ordenar 20 enteros.");

	n = 20;
	iteraciones = 0;
	inicializar (t);
	quicksort(t, 0, n-1);

	print_ln ("");
	print_ln ("Iteraciones: ", iteraciones);
}
