//----------------------------------------------------------------------
//  fibonacci_iterativo.cl
//----------------------------------------------------------------------

//-----------------------------------------------------------
void cambiar_de_linea () {

	print (int2char (13), int2char (10));
}

//-----------------------------------------------------------
void pedir_dato (int& dato) {
    dato = 0;
    
    while (dato <= 0){
        print ("Escribe un numero positivo: ");
        read_ln (dato);
	}
}
//-----------------------------------------------------------
void dato (int& dato) {
	bool correcto;
   

	dato = 0;
	correcto = false;
	while (!correcto) {
		pedir_dato (dato);
		correcto = dato > 0;
 		if (!correcto) {
			print_ln ("El numero debe ser postivo.");
		}
	}
}
//-----------------------------------------------------------

int i, n, fn, fnm1, fnm2;

void main () {
	print_ln ("");
	print_ln ("Este programa pide un número positivo n y calcula fib(n) con la fórmula recursiva fib(n) = fib(n-1) + fib(n-2)");
	print_ln ("Es muy rápido porque la implementación es iterativa.");
	print_ln ("Habrá MATH overflow en fib(47) porque los enteros en la máquina p son de 4 bytes).");
	print_ln ("");
	dato (n);
	print_ln ("");

	print_ln ("fib(1) = 1");
	print_ln ("fib(2) = 1");

	i = 3;
	fnm1 = 1;
	fnm2 = 1;
	while (i <= n) {
		fn = fnm1 + fnm2;
		print_ln ("fib(", i,") = ", fn);
		fnm2 = fnm1;
		fnm1 = fn;
		i = i + 1;
	}
	cambiar_de_linea ();
}