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

int return1()
{
    return 1;
}

int return2()
{
    return1();
    return 2;
}

void main()
{
    int temp;
    int a;

    a = return2();

    print_ln("Value: ", a);
}