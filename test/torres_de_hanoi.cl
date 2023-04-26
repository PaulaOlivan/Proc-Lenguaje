//----------------------------------------------------------------------
//  reinas_ajedrez.cl
//----------------------------------------------------------------------
//-- algoritmo recurso para resolver las torres de hanoi
//-- https://en.wikipedia.org/wiki/Tower_of_Hanoi#Recursive_solution
//--------------------------------------------------------------------------
int steps, n;

//--------------------------------------------------------------------------
void hanoi (int n, char source, char target, char spare) {
	if (n == 1) {
		print_ln ("Move disk from tower ", source, " to tower ", target, ". ");
		steps = steps + 1;
	}
	else {
		hanoi (n - 1, source, spare, target);
		hanoi (1, source, target, spare);
		hanoi (n - 1, spare, target, source);
	}
}
//--------------------------------------------------------------------------
void main() {
	print_ln ();
	print_ln ("Recursive algorithm to solve the Hanoi Towers problem.");
	print_ln ("https://en.wikipedia.org/wiki/Tower_of_Hanoi#Recursive_solution");
	print_ln ();

	steps = 0;
	n = 3;

	print_ln ("Solving for ", n, " disks.");
	print_ln();

	hanoi (n, 'A', 'C', 'B');

	print_ln ();
	print_ln ("Finished in ", steps, " steps.");
}