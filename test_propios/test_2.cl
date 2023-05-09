// Autores: Hugo Mateo Trejo (816678)
//          Paula Oliván Usieto (771938)
// Fecha de creación: 15/03/2023
// Comentario: Test para evaluar la corrección del análisis léxico-semántico
//              Realiza la ordenacion de un vector mediante random sort

int rand_seed; // initial seed value
int RAND_MAX;

// generate a random number between 0 and RAND_MAX
int rand() {
    int value;

    rand_seed = rand_seed * 1103515245 + 12345; // update seed value
    value = (rand_seed / 65536) % RAND_MAX;
    
    if (value < 0)
        {value = -value;}

    return value;
}

// set the seed value for the random number generator
void srand(int seed) {
    rand_seed = seed;
}


void random_sort(int &arr[5], int size) {
    int i, j, temp;

    i = size - 1;
    while (i > 0) {
        j = rand() % (i + 1);

        temp = arr[i];
        arr[i] = arr[j];
        arr[j] = temp;
        i = i - 1;
    }
}

bool checkArray(int arr[5], int size) {
    int i, k, val1, val2;

    i = 0;
    k = 0;

    //print_ln("Comprobando array, size: ", size);
    
    while (i < size-1 && arr[i] <= arr[i+1]) {
        i = i + 1;
    }

    //while (k < size)
    //{
    //    print(arr[k]);
    //    k = k + 1;
    //}
    //print_ln();

    if (i == size-1) {
        return true;
    } else {
        return false;
    }
}

void main() {
    int arr[5];
    int i;
    int size;
    size = 5;

    arr[0] = 4;
    arr[1] = 3;
    arr[2] = 6;
    arr[3] = 8;
    arr[4] = 1;

    //arr[5] = 2;
    //arr[6] = 8;
    //arr[7] = 4;
    //arr[8] = 7;
    //arr[9] = 3;

    rand_seed = 1;
    RAND_MAX = 999999;

    i = 0;
    print_ln("Unsorted array:");
    while (i < size) {
        print(arr[i]);
        i = i + 1;
    }
    print_ln();


    while (!checkArray(arr, size))
    {
        random_sort(arr, size);
    }


    print_ln("Sorted array:");
    i = 0;
    while (i < size) {
        print(arr[i]);
        i = i + 1;
    }
    print_ln();
}