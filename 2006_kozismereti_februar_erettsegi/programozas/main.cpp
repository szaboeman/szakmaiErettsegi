#include <iostream>
#include <string>
#include <fstream>
#include <vector>

using namespace std;

struct Szamla{
    int o1, p1, mp1, o2,p2,mp2;
    string tel;
};


bool mobile(string telefonszam) {
    string elohivo=telefonszam.substr(0,2);
    if (elohivo=="39" || elohivo=="41" || elohivo=="71") {
        return true;
    } else {
        return false;
    }
}

int mperc(int ora, int perc, int mp) {
    return mp+perc*60+ora*3600;
}

int elteltIdo(int ora1, int perc1, int mperc1, int ora2, int perc2, int mperc2) {
    int mettol=mperc(ora1,perc1,mperc1);
    int meddig=mperc(ora2,perc2,mperc2);
    return meddig-mettol;
}

void beolvas(vector<Szamla> &t) {
    fstream f;
    f.open("hivasok.txt",fstream::in);
    while (!f.eof()) {
        Szamla sv;
        f>>sv.o1>>sv.p1>>sv.mp1>>sv.o2>>sv.p2>>sv.mp2;
        f>>sv.tel;
        t.push_back(sv);
    }
    f.close();
}

void kiir(vector<Szamla> t) {
    for (int i=0; i<t.size(); i++) {
        cout<<t[i].tel<<"\t"<<t[i].o1<<":"<<t[i].p1<<":"<<t[i].mp1<<"-"<<t[i].o2<<":"<<t[i].p2<<":"<<t[i].mp2<<endl;
    }
}

int perc(int ido) {
    if (ido%60==0) {
        return ido/60;
    } else {
        return ido/60+1;
    }
}

void feladat3(vector<Szamla> t) {
    fstream f;
    f.open("percek.txt",fstream::out);
    for (int i=0; i<t.size(); i++) {
        int ido=elteltIdo(t[i].o1,t[i].p1,t[i].mp1,t[i].o2,t[i].p2,t[i].mp2);
        f<<perc(ido)<<" "<<t[i].tel<<endl;
    }
    cout<<"3. feladat: a percek.txt fájlt létrehoztam.\n";
    f.close();
}

bool csucsidoe(int o1) {
    if (o1>=7 && o1<18) {
        return true;
    } else {
        return false;
    }
}

void feladat4(vector<Szamla> t) {
    int dbcs=0, dbcsk=0;
    for(int i=0; i<t.size(); i++) {
        if (csucsidoe(t[i].o1)) {
            dbcs++;
        } else {
            dbcsk++;
        }
    }
    cout<<"4. feladat\n";
    cout<<"Csucsidon kivuli hivasok: "<<dbcsk<<endl;
    cout<<"Csucsidben tortent hivasok: "<<dbcs<<endl;
}

void feladat5(vector<Szamla> t) {
    int percm=0, percv=0;
    for (int i=0; i<t.size(); i++) {
        int ido=elteltIdo(t[i].o1,t[i].p1,t[i].mp1,t[i].o2,t[i].p2,t[i].mp2);
        if (mobile(t[i].tel)) {
            percm+=perc(ido);
        } else {
            percv+=perc(ido);
        }
    }
    cout<<"5. feladat\n";
    cout<<"Mobil iranyba "<<percm<<" percet beszelt"<<endl;
    cout<<"Vezetekes iranyba "<<percv<<" percet beszelt"<<endl;
}

void feladat6(vector<Szamla> t) {
    double osszeg=0;
    for (int i=0; i<t.size(); i++) {
        if (csucsidoe(t[i].o1)) {
            int ido=elteltIdo(t[i].o1,t[i].p1,t[i].mp1,t[i].o2,t[i].p2,t[i].mp2);
            if (mobile(t[i].tel)) {
                osszeg=osszeg+69.175*perc(ido);
            } else {
                osszeg=osszeg+30*perc(ido);
            }
        }
    }
    cout<<"6. feladat\n";
    cout<<"Csucsidoben tortent hivasok osszerteke: "<<osszeg<<" ft"<<endl;
}

int main() {
    string telefonszam;
    cout<<"1. feladat: Adj meg egy mobilszamot: ";
    cin>>telefonszam;
    if (mobile(telefonszam)) {
        cout<<"1. feladat: a megadott szam mobil!\n";
    } else {
        cout<<"1. feladat: a megadott szam vezetekes!\n";
    }
    cout<<"------------------------------------------------\n";
    int o1, o2, p1,p2,mp1,mp2;
    cout<<"2. feladat: \nAdd meg a hivas kezdetet (ora perc mperc): ";
    cin>>o1>>p1>>mp1;
    cout<<"Add meg a hivas veget (ora perc mperc): ";
    cin>>o2>>p2>>mp2;
    cout<<"A hivas "<<elteltIdo(o1,p1,mp1,o2,p2,mp2)<<" masodpercig tartott\n";
    cout<<"------------------------------------------------\n";

    vector<Szamla> t;
    beolvas(t);
    kiir(t);
    cout<<"------------------------------------------------\n";
    feladat3(t);
    cout<<"------------------------------------------------\n";
    feladat4(t);
    cout<<"------------------------------------------------\n";
    feladat5(t);
    cout<<"------------------------------------------------\n";
    feladat6(t);
    return 0;
}

