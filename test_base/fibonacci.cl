//----------------------------------------------------------------------
//  fibonacci.cl
//----------------------------------------------------------------------

int i, n, r;
//---------------------------------------------------------
void dato (int& dato) {
  bool correcto;
  dato = 0;
  correcto = false;
  while (!correcto) {
     print ("Escribe un numero positivo: ");
     read (dato);
     correcto = dato > 0;
     if (!correcto) {
        print_ln ("El numero debe ser positivo.");
     }
  }
}

//---------------------------------------------------------
void cambiar_de_linea () {
  print (int2char (13), int2char (10));
}
//---------------------------------------------------------
void fib (int n, int& r) {
  int r1, r2;

  if (n > 1) {
     fib (n - 1, r1);
     fib (n - 2, r2);
     r = r1 + r2;
  }
  else {
     r = n;
  }
}
//---------------------------------------------------------
void main() {
  print_ln ("Este programa pide un número positivo n y calcula fib(n) con la fórmula recursiva fib(n) = fib(n-1) + fib(n-2)");
  print_ln ("A partir de 30 será muy lento por la recursividad.");
  print_ln ("");
  dato (n);
  i = 1;
  while (i <= n) {
    fib (i, r);
    print_ln ("fib(", i,") = ", r);
    i = i + 1;
  }
  cambiar_de_linea ();
}