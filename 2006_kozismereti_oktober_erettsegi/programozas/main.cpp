#include <iostream>
#include <fstream>
#include <string>
#include <vector>

using namespace std;

struct Adas{
    int radioado, perc, mperc;
    string zeneszam;
};

void beolvas(vector<Adas> &v) {
    fstream f;
    f.open("musor.txt", fstream::in);
    int n;
    f>>n;
    for (int i=0; i<n; i++) {
        Adas sv;
        f>>sv.radioado>>sv.perc>>sv.mperc;
        f.ignore();
        getline(f,sv.zeneszam);
        v.push_back(sv);
    }
    f.close();
}

void kiir(vector<Adas> v) {
    for (int i=0; i<v.size(); i++) {
        cout<<v[i].radioado<<"\t"<<v[i].perc<<":"<<v[i].mperc<<"\t"<<v[i].zeneszam<<endl;
    }
}

int megszamol(vector<Adas> v, int ado) {
    int db=0;
    for (int i=0; i<v.size(); i++) {
        if (v[i].radioado==ado) {
            db++;
        }
    }
    return db;
}

void feladat2(vector<Adas> v) {
    cout<<"2. feladat:\n";
    for (int i=1; i<=3; i++) {
        cout<<i<<". radioado: "<<megszamol(v,i)<<" db zeneszam volt\n";
    }
}

int kivalaszt_elso(vector<Adas> v) {
    int i=0;
    while (!(v[i].zeneszam.find("Eric Clapton")<v[i].zeneszam.length() && v[i].radioado==1)) {
        i++;
    }
    return i;
}


int kivalaszt_utolso(vector<Adas> v) {
    int i=v.size()-1;
    while (!(v[i].zeneszam.find("Eric Clapton")<v[i].zeneszam.length() && v[i].radioado==1)) {
        i--;
    }
    return i;
}

int osszegez(vector<Adas> v) {
    int mp=0;
    for (int i=kivalaszt_elso(v)+1; i<kivalaszt_utolso(v) ;i++) {
        if (v[i].radioado==1) {
            mp=mp+v[i].mperc+v[i].perc*60;
        }
    }
    return mp;
}

void feladat3(vector<Adas> v) {
    int mp=osszegez(v);
    int ora=mp/3600;
    mp=mp%3600;
    int perc=mp/60;
    mp=mp%60;
    cout<<"3. feladat: Az elso adaton az elso es az utolso Eric Clapton szam kozott: "<<ora<<":"<<perc<<":"<<mp<<" telt el\n";
}

int keres(vector<Adas> v) {
    int i=0;
    while (v[i].zeneszam!="Omega:Legenda") {
        i++;
    }
    return i;
}

int osszegez3(vector<Adas> v, int meddig) {
    int mp=0;
    for (int i=0; i<meddig; i++) {
        if (v[i].radioado==3) {
            mp=mp+v[i].mperc+v[i].perc*60;
        }
    }
    return mp;
}

int keresszam(vector<Adas> v, int csatorna, int mp) {
    int i=0;
    int osszegmp=0;
    while (i<v.size() && osszegmp<mp) {
        if(v[i].radioado==csatorna) {
            osszegmp=osszegmp+v[i].mperc+v[i].perc*60;
        }
        i++;
    }
    return i;
}

void feladat4(vector<Adas> v) {
    cout<<"4. feladat: amikor Eszter elkapcsolt:\n";
    int elteltido=osszegez3(v,keres(v));
    if (keresszam(v,1,elteltido)<v.size()) {
        cout<<"Az elso adon: "<<v[keresszam(v,1,elteltido)].zeneszam<<" zeneszam szolt\n";
    } else {
        cout<<"Az elso adon, nem szolt semmi!"<<endl;
    }
    if (keresszam(v,2,elteltido)<v.size()) {
        cout<<"A masodik adon: "<<v[keresszam(v,2,elteltido)].zeneszam<<" zeneszam szolt\n";
    } else {
        cout<<"A masodik adon, nem szolt semmi!"<<endl;
    }

}

bool eldont(string mit, string mibe) {
    int i=0; //<--- bejárjuk vele a mint
    int j=0; //<-- bejárjuk a mibe
    while (i<mit.length() && j<mibe.length()) {
        while (j<mibe.length() && tolower(mibe[j])!=tolower(mit[i])) {
            j++;
        }
        if (j<mibe.length()) {
            i++;
        }
    }
    if (i<mit.length()) {
        return false;
    } else {
        return true;
    }
}

void feladat5(vector<Adas> v) {
    string szoveg;
    cout<<"5. feladat: add meg a kiolvasott betuket: ";
    getline(cin,szoveg);
    fstream ki;
    ki.open("keres.txt",fstream::out);
    for (int i=0; i<v.size(); i++) {
        if (eldont(szoveg,v[i].zeneszam)) {
            ki<<v[i].zeneszam<<endl;
        }
    }
    ki.close();
}

void feladat6(vector<Adas> v) {
    int elteltido=0;
    for (int i=0; i<v.size(); i++) {
        if (v[i].radioado==1) {
            //A szám befejezõdik-e az egész óráig
            if (elteltido/3600==(elteltido+v[i].mperc+v[i].perc*60)/3600) {
                elteltido=elteltido+60+v[i].mperc+v[i].perc*60;
            } else {
                elteltido=elteltido+(3600-elteltido%3600);
                elteltido=elteltido+180+v[i].mperc+v[i].perc*60;
            }
        }
    }

    int ora=elteltido/3600;
    elteltido=elteltido%3600;
    int perc=elteltido/60;
    elteltido=elteltido%60;
    cout<<"6. feladat: "<<ora<<":"<<perc<<":"<<elteltido<<" fejezodott be az 1. adon a musor\n";
}

int main() {
    vector<Adas> v;
    beolvas(v);
    //kiir(v);
    feladat2(v);
    feladat3(v);
    feladat4(v);
    feladat5(v);
    feladat6(v);

    return 0;
}
