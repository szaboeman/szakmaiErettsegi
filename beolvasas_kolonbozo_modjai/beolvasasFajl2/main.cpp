#include <iostream>
#include <vector>
#include <fstream>
#include <string>

using namespace std;

struct SMegyek {
    string nev, szekhely,regio;
    float terulet;
    int nep,tel,kis,jar;
};

void beolvas(vector<SMegyek> &m) {
    fstream f;
    f.open("megyek_szokoz_while.txt", fstream::in);
    while (!f.eof()) {
        SMegyek sv;
        f>>sv.nev>>sv.szekhely>>sv.regio>>sv.terulet>>sv.nep>>sv.tel>>sv.kis>>sv.jar;
        m.push_back(sv);
    }
}

void kiir(vector<SMegyek> m) {
    for (int i=0; i<m.size();i++) {
        cout<<m[i].nev<<"\t"<<m[i].terulet<<endl;
    }
}

int main() {
    /*6. beolvasási fájlból while ciklussal*/
    vector<SMegyek> t;
    beolvas(t);
    kiir(t);
    return 0;
}
