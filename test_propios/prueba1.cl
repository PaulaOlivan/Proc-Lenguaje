int factorial (int n)
{
    if (n == 0) {
        return 1;    
    }
    //else if (n == 1)
    //{
    //    return 1;
    //}
    else {
        return n * factorial(n-1);
    }
    
}


void main()
{
    int temp;

    temp = factorial(3);

    print_ln(temp);
}