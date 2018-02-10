#include <iostream>
#include <string>
#include <fstream>
#include <vector>

using namespace std;

class Vigenere {
private:
    string nyilt;
    string kulcs;
    string kulcsszoveg;
    vector<string> kodtabla;

    string atalakit(string szoveg) {
        string ujszoveg="";
        for (int i=0; i<szoveg.length(); i++) {
            if (szoveg[i]==-95 || szoveg[i]==-42) szoveg[i]='I';
            if (szoveg[i]==-126 || szoveg[i]==-112) szoveg[i]='E';
            if (szoveg[i]==-96 || szoveg[i]==-75) szoveg[i]='A';
            if (szoveg[i]==-5 || szoveg[i]==-21) szoveg[i]='U';
            if (szoveg[i]==-93 || szoveg[i]==-23) szoveg[i]='U';
            if (szoveg[i]==-117 || szoveg[i]==-118) szoveg[i]='O';
            if (szoveg[i]==-94 || szoveg[i]==-32) szoveg[i]='O';
            if (szoveg[i]==-127 || szoveg[i]==-102) szoveg[i]='U';
            if (szoveg[i]==-108 || szoveg[i]==-103) szoveg[i]='O';
            szoveg[i]=toupper(szoveg[i]);
            if (szoveg[i]>=65 && szoveg[i]<=90) {
                ujszoveg+=szoveg[i];
            }
        }
        return ujszoveg;
    }

    string osszefuzkulcs() {
        kulcsszoveg="";
        do {
            kulcsszoveg+=kulcs;
        } while (kulcsszoveg.length()<nyilt.length());
        kulcsszoveg=kulcsszoveg.substr(0,nyilt.length());
        return kulcsszoveg;
    }

    int kivalaszt(char karakter) {
        int i=0;
        while (kodtabla[i][0]!=karakter) {
            i++;
        }
        return i;
    }

    string kodol() {
        string kodoltsz="";
        for (int i=0; i<nyilt.length(); i++) {
            int sorHelye=kodtabla[0].find(nyilt[i]);
            int oszlopHelye=kivalaszt(kulcsszoveg[i]);
            kodoltsz+=kodtabla[oszlopHelye][sorHelye];
        }
        return kodoltsz;
    }
public:
    Vigenere() {
        ifstream f("VTabla.dat");
        while (!f.eof()) {
            string data;
            f>>data;
            kodtabla.push_back(data);
        }
        f.close();

        bekerNyilt();
        bekerKulcs();
        cout<<"A kodolt szoveg: "<<kodol()<<endl;

        fstream ki;
        ki.open("kodolt.dat",fstream::out);
        ki<<kodol();
        ki.close();
    }
   void bekerNyilt() {
        cout<<"1. feladat: Add meg a nyilt szoveg: ";
        getline(cin,nyilt);
        nyilt=atalakit(nyilt);
        cout<<"3. feladat: Az atalakitott nyilt szoveg: "<<nyilt<<endl;
    }

    void bekerKulcs() {
        cout<<"4. feladat: add meg a kulcsot (max 5 karakter lehet): \n";
        do {
            cin>>kulcs;
            if (kulcs.length()<=0 || kulcs.length()>5) {
                cout<<"Hibas kulcsot adtal meg!\n";
                cout<<"Adj meg egy helyes kulcsot: ";
            }
        } while (kulcs.length()<=0 || kulcs.length()>5);
        kulcs=atalakit(kulcs);
        cout<<endl<<"Kulcs: "<<kulcs<<endl;
        kulcsszoveg=osszefuzkulcs();
        cout<<"Kulcsszöveg: "<<kulcsszoveg<<endl;
    }
};

int main() {
    Vigenere v;
    return 0;
}
