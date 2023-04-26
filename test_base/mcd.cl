//----------------------------------------------------------------------
//  mcd.cl
//----------------------------------------------------------------------

void dato (int& d) {
	d = 0;
	while (d <= 0) {
		print ("Escribe un numero (>0): ");
		read_ln (d);
		if (d <= 0) {
			print_ln("El numero debe ser > 0.");
		}
	}
}
//------------------------------------------------------
int mcd(int a, int b) {
	int i, j, k;

	j = a;
	k = b;
	i = a % b;
	while (i != 0) {
		j = k;
		k = i;
		i = j % k;
	}
	return k;
}
//------------------------------------------------------
int i, j;

void main() {
	print_ln ("Este programa pide dos números positivos y calcula su máximo común divisor.");
	dato (i);
	dato (j);
	print_ln ("");
	print_ln ("mcd(", i, ",", j, ") = ", mcd (i,j));
}
