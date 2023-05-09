//int factorial (int n)
//{
//    if (n == 0) {
//        return 1;    
//    }
//    else if (n == 1)
//    {
//        return 1;
//    }
//    else {
//        return n * factorial(n-1);
//    }   
//}

void sum (int &a[2])
{
    a[1] = a[0]+a[1];
}

bool imprimir(int a)
{
    print_ln(a);

    return true;
}

void pantalla()
{
    print_ln("Funciono");
}

void main()
{
    int temp;
    int a;

    read(a);

    pantalla();

    while (a < 10)
    {
        a = a + 1;
        print(a);
    }    

    print_ln("Sum: ", a);
}