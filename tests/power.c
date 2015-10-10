int power(int a, int b) ;
int plouf(int arc, char**argv) {
    return power(2,3);
}
int power(int a, int b) {
    if(b == 0)
        return 1;

    for(int i=1 ; i < b-1 ; i++) {
        a = a*a;
    }
    return a;
}


