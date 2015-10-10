int main(int arc, char**argv) {
    int res;
    switch(arc) {
        case 0:
            res = 0;
            break;
        case 1:
            res = 1;
            break;
        default:
            res = 2;
    }

    return res;
}
