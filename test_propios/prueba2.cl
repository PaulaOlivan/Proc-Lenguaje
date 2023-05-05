// Casos a probar: valor->referencia, referencia->valor, valor->valor, referencia->referencia

int sumValor (int a, int& b){
    return a+b;
}

int sumRef (int &a, int b){
    return sumValor(b, a); //Probamos caso de valor a valor y referencia a referencia
    //return sumValor(a, b); //Probamos caso de referencia a valor y valor a referencia
}

void main()
{
    int num1;
    int num2;
    int num3;
    int num4;
    int res2;

    num1 = 5;
    num2 = 3;
    num3 = 2;
    num4 = 4;
    
    res2 = sumRef(num1, num3);

    while(num4 != 0){
        print_ln("Me cago en tu puta madre");
        print_ln("Mensaje de debug de Ismael");
        num4 = num4 - 1;
    }
    

    //print_ln("Suma por valor: ", res1);
    print_ln("Suma por referencia: ", res2);
}