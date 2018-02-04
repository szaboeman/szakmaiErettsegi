#include <iostream>
#include <vector>
#include <fstream>
#include <string>
#include <cstdlib>

using namespace std;

struct SMegyek {
    string nev, szekhely,regio;
    float terulet;
    int nep,tel,kis,jar;
};

int main() {

    /*7.beolvasás vesszõvel*/
    vector<SMegyek> t;
    fstream f;
    f.open("megyek_szokoz_vesszo_for.txt",fstream::in);
    int hossz;
    f>>hossz;
    for (int i=0; i<hossz;i++) {
        SMegyek sv;
        string adat;
        f>>sv.nev>>sv.szekhely>>sv.regio>>adat>>sv.nep>>sv.tel>>sv.kis>>sv.jar;
        if (adat.find(",")<adat.length()) {
            adat=adat.replace(adat.find(","),1,".");
        }
        sv.terulet=atof(adat.c_str());
        t.push_back(sv);
    }
    for (int i=0; i<t.size();i++) {
        cout<<t[i].nev<<"\t"<<t[i].terulet<<endl;
    }

    return 0;
}
