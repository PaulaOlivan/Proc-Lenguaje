//----------------------------------------------------------------------
//  cambio_base.cl
//----------------------------------------------------------------------
int num, base;
int enB;
//----------------------------------------------------
int b_dec(int n, int b) {
	int uc;
	int valRec;

	if (n == 0) {
		return 0;
	}
	else {
		uc = n % 10;
	
		valRec = b_dec (n / 10, b);
		return valRec*b + uc;
	}
}
//----------------------------------------------------
int dec_b(int n, int b) {
	int resto,valRec;

	if (n < b) {
		return n;
	}
	else {
		resto = n % b;
		valRec = dec_b (n / b, b);
		return valRec*10 + resto;
	}
}

//----------------------------------------------------
void main () {
	num = 4;
	base = 2;

	print_ln ("Este programa convierte n=",num," a base b=", base, ", y luego efectúa la conversión inversa.");
	print_ln();
	print_ln("n: ",num);
	print("b: ");
	print_ln(base);
	enB = dec_b(num,base);
	print_ln ("dec_b(",num,",",base,"): ",enB);
    print_ln ("b_dec(",enB,",",base,"): ",b_dec(enB,base));
	print_ln();
}
