int factoriel(int a);
int main(int argc, char**argv)  {
    return factoriel(argc);    
}
int factoriel(int a) {
    if(a <= 1)
        return 1;

    return factoriel(a-1)*a;
}

