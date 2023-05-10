// Casos a probar: valor->referencia, referencia->valor, valor->valor, referencia->referencia

int sumValor (int a, int& b){
    return a+b;
}

int sumRef (int &a, int b){
    return sumValor(b, a); //Probamos caso de valor a valor y referencia a referencia
    //return sumValor(a, b); //Probamos caso de referencia a valor y valor a referencia
}

int suma (int &a, int &b){
    return a+b;
}

void main()
{
    int num[4];
    int res2;

    num[0] = 5;
    num[1] = 3;
    num[2] = 2;
    num[3] = 4;
    
    res2 = suma(num[0], num[1]);
    

    //print_ln("Suma por valor: ", res1);
    print_ln("Suma por referencia: ", res2);
}