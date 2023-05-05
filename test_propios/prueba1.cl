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


void main()
{
    int temp;
    int a[2];

    read_ln(a[0]);
    read_ln(a[1]);
    
    sum(a);


    //temp = factorial(temp);
    //print_ln("Factorial: ", temp);
    print_ln("Sum: ", a[1]);
}