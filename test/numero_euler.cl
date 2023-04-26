//----------------------------------------------------------------------
//  numero_euler.cl
//----------------------------------------------------------------------
// e aproximado con una serie infinita
// https://en.wikipedia.org/wiki/List_of_representations_of_e#As_an_infinite_series

//--------------------------------------------------------------------
int n, e[101], sumando[101], resultado[101], ndigitos;

//--------------------------------------------------------------------
void iniciar (int& s[101]) {
	int i;

	i = 0;
	while (i <= ndigitos) {
		s[i] = 0;
		i = i + 1;
 	}
}
//--------------------------------------------------------------------
void mostrar_numero (int& s[101]) {
	int i;

	print (s[0],'.');
	i = 1;
	while (i <= ndigitos) {
		if (((i-1) % 5) == 0) {
			print (" ");
		}
		print (s[i]);
		i = i + 1;
	}
	print_ln("");
}

//--------------------------------------------------------------------
void sumar (int& s[101], int& r[101]) {
	int i, n;

	i = ndigitos;
	while (i > 0) {
		n = s[i] + r[i];
		if (n > 9) {
			s[i] = n % 10;
			s[i-1] = s[i-1] + (n / 10);
		}
		else {
			s[i] = n;
		}
		i = i - 1;
   }
}
//--------------------------------------------------------------------
void dividir (int& s[101], int& r[101], int n) {
	int i;
	i = 0;
	while (i < ndigitos) {
		if (s[i] / n > 0) {
			r[i] = s[i] / n;
			s[i+1] = (((s[i] % n) * 10)) + s[i+1];
		}
		else {
			r[i] = 0;
			s[i+1] = (s[i] * 10) + s[i+1];
		}
 		i = i + 1;
	}
}
//--------------------------------------------------------------------
void asignar (int& s[101], int& r[101]) {
	int i;

	i = 0;
	while (i <= ndigitos) {
		s[i] = r[i];
		i = i + 1;
	}
}
//--------------------------------------------------------------------
void main () {
	ndigitos = 20;
   
	print ("Aproximación del número de Euler e utilizan");
	print_ln (" la serie infinita e = 1/0! + 1/1! + 1/2! + 1/3! ...");
	print_ln ("");
   
	iniciar (sumando);
	iniciar (e);
	sumando[0] = 1;
	e[0] = 2;
	n = 1;
	while (n < ndigitos) {
		dividir (sumando, resultado, n);
		sumar (e, resultado);
		print ("e con ", n+1, " componentes de la serie: ");
		mostrar_numero (e);
		asignar (sumando, resultado);
		n = n + 1;
	}
	print_ln ("");
	print_ln ("La convergencia es rápida porque los términos de la suma son 1/k!");
}
