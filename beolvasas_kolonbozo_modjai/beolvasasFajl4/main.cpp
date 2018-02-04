#include <iostream>
#include <vector>
#include <fstream>
#include <string>
#include <cstdlib>
#include <sstream>

using namespace std;

struct SMegyek {
    string nev, szekhely,regio;
    float terulet;
    int nep,tel,kis,jar;
};

void beolvas(vector<SMegyek> &m) {
    fstream f;
    f.open("megyek_pontosvesszo.txt",fstream::in);
    while (!f.eof()) {
        string sor;
        SMegyek sv;
        getline(f,sor);
        stringstream ss(sor);
        string adat;
        getline(ss,adat,';');
        sv.nev=adat;
        getline(ss,adat,';');
        sv.szekhely=adat;
        getline(ss,adat,';');
        sv.regio=adat;
        getline(ss,adat,';');
        if (adat.find(",")<adat.length()) {
            adat=adat.replace(adat.find(","),1,".");
        }
        sv.terulet=atof(adat.c_str());
        getline(ss,adat,';');
        sv.nep=atoi(adat.c_str());
        getline(ss,adat,';');
        sv.tel=atoi(adat.c_str());
        getline(ss,adat,';');
        sv.kis=atoi(adat.c_str());
        getline(ss,adat,';');
        sv.jar=atoi(adat.c_str());
        m.push_back(sv);
    }
}

void kiir(vector<SMegyek> m) {
    for (int i=0; i<m.size();i++) {
        cout<<m[i].nev<<"\t"<<m[i].terulet<<"\t"<<m[i].jar<<endl;
    }
}


int main() {

    vector<SMegyek> v;
    beolvas(v);
    kiir(v);


    return 0;
}
