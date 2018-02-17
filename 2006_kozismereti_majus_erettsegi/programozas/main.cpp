#include <iostream>
#include <fstream>
#include <string>
#include <vector>
#include <algorithm>

using namespace std;

struct Aminosav {
    string rovid;
    char jel;
    int c,h,o,n,s;
};

class Feherje {
private:
    vector<Aminosav> ami;
    fstream ki;
    string bsa;
    int molekulatomeg(Aminosav a) {
        return a.c*12+a.h*1+a.o*16+a.n*14+a.s*32;
    }

public:
    Feherje() {
        fstream f;
        f.open("aminosav.txt",fstream::in);
        while (!f.eof()) {
            Aminosav sv;
            f>>sv.rovid>>sv.jel>>sv.c>>sv.h>>sv.o>>sv.n>>sv.s;
            ami.push_back(sv);
        }
        f.close();

        bsa="";
        f.open("bsa.txt",fstream::in);
        while (!f.eof()) {
            string a;
            f>>a;
            bsa+=a;
        }
        f.close();
        ki.open("eredmeny.txt",fstream::out);
    }
    void feladat2() {
        cout<<"2. feladat: \n";
        for (int i=0; i<ami.size(); i++) {
            cout<<ami[i].rovid<<": "<<molekulatomeg(ami[i])<<endl;
        }
    }

    void rendez() {
        sort(ami.begin(), ami.end(),[](const Aminosav &bal, const Aminosav &jobb) {
            return bal.c*12+bal.h*1+bal.o*16+bal.n*14+bal.s*32<jobb.c*12+jobb.h*1+jobb.o*16+jobb.n*14+jobb.s*32;
        });
        cout<<"3. feladat: rendezett tomb\n";
        ki<<"3. feladat: rendezett tomb\n";
        for (int i=0; i<ami.size(); i++) {
            cout<<ami[i].rovid<<": "<<molekulatomeg(ami[i])<<endl;
            ki<<ami[i].rovid<<": "<<molekulatomeg(ami[i])<<endl;
        }
    }

    Aminosav keres(char jel) {
        int i=0;
        while (i<ami.size() && ami[i].jel!=jel) {
            i++;
        }
        return ami[i];
    }

    void feladat4() {
        cout<<"4. feladat: bsa osszegkeplete\n";
        ki<<"4. feladat: bsa osszegkeplete\n";
        int cdb=0,hdb=0,odb=0,ndb=0,sdb=0;
        for (int i=0; i<bsa.length(); i++) {
            Aminosav a=keres(bsa[i]);
            cdb+=a.c;
            hdb+=a.h;
            odb+=a.o;
            ndb+=a.n;
            sdb+=a.s;
        }
        cout<<"C "<<cdb*12<<" H "<<hdb*1-(bsa.length()-1)*2<<" O "
            <<odb*16-(bsa.length()-1)<<" N "<<ndb*14<<" S "<<sdb*32<<endl;
        ki<<"C "<<cdb*12<<" H "<<hdb*1-(bsa.length()-1)*2<<" O "
            <<odb*16-(bsa.length()-1)<<" N "<<ndb*14<<" S "<<sdb*32<<endl;
    }

    void feladat5() {
        int akthossz=0, maxkezd=0, maxveg=0,maxhossz=0;
        for (int i=0; i<bsa.length(); i++) {
            akthossz++;
            if (bsa[i]=='Y' || bsa[i]=='W' || bsa[i]=='F') {
                if (akthossz>maxhossz) {
                    maxhossz=akthossz;
                    maxkezd=maxveg;
                    maxveg=i;
                    akthossz=0;
                }
            }
        }
        cout<<"5. feladat: leghosszabb lanc\n";
        cout<<"kezdet: "<<maxkezd<<endl;
        cout<<"vege: "<<maxveg<<endl;
        cout<<"hossz: "<<maxhossz+1<<endl;
        ki<<"5. feladat: leghosszabb lanc\n";
        ki<<"kezdet: "<<maxkezd<<endl;
        ki<<"vege: "<<maxveg<<endl;
        ki<<"hossz: "<<maxhossz+1<<endl;
    }

    void feladat6() {
        int i=0,cdb=0;
        while (i<bsa.length()-1 &&
               !(bsa[i]=='R' && (bsa[i+1]=='A' || bsa[i+1]=='V'))) {
            if (bsa[i]=='C') {
                cdb++;
            }
            i++;
        }
        cout<<"6. feladat: ciszterinek száma: "<<cdb<<" az elso hasitott feherjelancba.";
        ki<<"6. feladat: ciszterinek száma: "<<cdb<<" az elso hasitott feherjelancba.";
    }

    ~Feherje() {
        ki.close();
    }
};

int main() {
    Feherje f;
    f.feladat2();
    f.rendez();
    f.feladat4();
    f.feladat5();
    f.feladat6();
    return 0;
}
