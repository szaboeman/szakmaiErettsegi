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

int main() {

    /*5. Beolvasás vektorba fro+szóköz+pont*/
    vector<SMegyek> t;
    ifstream f("megyek_szokoz_for.txt");
    int hossz;
    f>>hossz;
    for (int i=0; i<hossz;i++) {
        SMegyek sv;
        f>>sv.nev>>sv.szekhely>>sv.regio>>sv.terulet>>sv.nep>>sv.tel>>sv.kis>>sv.jar;
        t.push_back(sv);
    }
    for (int i=0; i<t.size();i++) {
        cout<<t[i].nev<<"\t"<<t[i].terulet<<endl;
    }


    return 0;
}
