//----------------------------------------------------------------------
//  factorial.cl
//----------------------------------------------------------------------

//----------------------------------------------------------------------
int fact (int m) {
    if (m == 1) {
        return 1;
    }
    else {
        return m * fact(m-1);
    }
}
//----------------------------------------------------------------------
int n;
//----------------------------------------------------------------------
void main() {
    print_ln ("");
    print_ln ("Calcula k! para k=1..20.");
    print_ln ("");
    print_ln ("Habrá MATH overflow en 13! porque los enteros en la máquina p son de 4 bytes.");
    print_ln ("");

    n = 1;
    while (n <= 20) {
        print_ln (n, "! = ", fact (n));
        n = n + 1;
    }
}
  
