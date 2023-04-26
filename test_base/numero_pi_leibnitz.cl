//----------------------------------------------------------------------
//  numero_pi_leibnitz.cl
//----------------------------------------------------------------------

int n, pi[101], sumando[101], resultado[101], limite_n, digitos;
bool sumo;

//--------------------------------------------------------------------
void iniciar (int& s[101]) {
   int i;

   i = 0;
   while (i <= digitos) {
      s[i] = 0;
      i = i + 1;
   }
}
//--------------------------------------------------------------------
void mostrar_numero (int& s[101]) {
	int i;

	print (s[0],'.');
	i = 1;
	while (i <= digitos) {
		if (((i-1) % 5) == 0) {
			print (" ");
		}
		print (s[i]);
		i = i + 1;
	}
	print_ln("");
}
//--------------------------------------------------------------------
void sumar (int& s[101], int r[101]) {
	int i, n;

	i = digitos;
	while (i >= 0) {
		n = s[i] + r[i];
		if (n > 9) {
			s[i] = n % 10;
	        if (i > 0) {
               s[i-1] = s[i-1] + (n / 10);
			}
		}
		else {
			s[i] = n;
		}
		i = i - 1;
	}
}
//--------------------------------------------------------------------
//-- s = s - r
void restar (int& s[101], int r[101]) {

	int i, n;
	bool llevo_uno;

	i = digitos;
	llevo_uno = false;

	while (i >= 0) {
		if (llevo_uno) { 
			n = (s[i] - 1) - r[i];
		}
		else {
			n = s[i] - r[i];
     	}
		if (n < 0) {
			s[i] = n + 10;
			llevo_uno = true;
		}
		else {
			s[i] = n;
			llevo_uno = false;
		}
		i = i - 1;
   }
}

//--------------------------------------------------------------------
void dividir (int s[101], int& r[101], int n) {
	int i;

	i = 0;
	while (i < digitos) {
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
void main() {
   print_ln ("Aproximación del número Pi utilizando la serie infinita e = 4 - 4/3 + 4/5 - 4/7 + 4/9 ...");
   print_ln ("");
   iniciar (sumando);
   iniciar (pi);
   sumando[0] = 4;
   pi[0] = 4;
   n = 3;
   digitos = 50;
   limite_n = 100;
   sumo = false;
   while (n < limite_n) {
         dividir (sumando, resultado, n);
         if (sumo) {
            sumar (pi, resultado);
         }
         else {
            restar (pi, resultado);
         }
         sumo = !sumo;
         print ("Pi con ", (n - 1) / 2, " componentes de la serie: ");
         mostrar_numero (pi);
         n = n + 2;
   }
   print_ln ("");
   print_ln ("La convergencia es lenta porque los términos de la suma son prooprcionales a 1/k");
}
