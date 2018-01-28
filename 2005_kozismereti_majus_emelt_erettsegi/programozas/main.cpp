#include <iostream>
#include <vector>
#include <algorithm>
#include <fstream>
#include <sstream>
#include <cmath>

using namespace std;

class Lotto {
private:
    int aktHet;
    vector< vector<int> > lottoSzamok;
    vector<int> prim;

    void kiir(vector<int> v) {
        for (int i=0; i<v.size(); i++) {
            cout<<v[i]<<" ";
        }
        cout<<endl;
    }

    void kiirOsszes() {
        for (int i=0; i<lottoSzamok.size(); i++) {
            kiir(lottoSzamok[i]);
        }
    }

    bool benneVane(int szam) {
        int i=0;
        bool vane=false;
        while (i<lottoSzamok.size() && !vane) {
            int j=0;
            while (j<lottoSzamok[i].size() && lottoSzamok[i][j]!=szam) {
                j++;
            }
            /*if (j<lottoSzamok[i].size()) {
                vane=true;
            } else {
                vane=false;
            }*/
            vane=(j<lottoSzamok[i].size());
            i++;
        }
        return (vane);
    }

    int megszamol(int szam) {
        int db=0;
        for (int i=0; i<lottoSzamok.size(); i++) {
            for (int j=0; j<lottoSzamok[i].size(); j++) {
                if (lottoSzamok[i][j]==szam) {
                    db++;
                }
            }
        }
        return db;
    }

    /*bool prime(int szam) {
        int i=2;
        while (i<floor(sqrt(szam)) && szam%i!=0) {
            i++;
        }
        return (i==floor(sqrt(szam)));
    }*/
    bool prime(int szam) {
        int i=0;
        while (i<prim.size() && szam%prim[i]!=0) {
            i++;
        }
        if (szam>1 && i==prim.size()) {
            prim.push_back(szam);
            return true;
        } else {
            return false;
        }
    }

public:
    Lotto() {
        ifstream f("lottosz.dat");
        while (!f.eof()) {
            vector<int> sv;
            string row, data;
            getline(f,row);
            stringstream ss(row);
            while (getline(ss,data,' ')) {
                sv.push_back(stoi(data));
            }
            /*for (int i=0; i<5; i++) {
                int data;
                f>>data;
                sv.push_back(data);
            }*/
            lottoSzamok.push_back(sv);
        }
        //kiirOsszes();
        f.close();
    }

    void beker() {
        vector<int> sv;
        cout<<"1. feladat: "<<endl;
        cout<<"Add meg a lottószámokat: ";
        for (int i=0; i<5; i++) {
            int data;
            cin>>data;
            sv.push_back(data);
        }
        sort(sv.begin(),sv.end());
        cout<<"2. feladat: rendezett ertekek: \n";
        kiir(sv);
        lottoSzamok.push_back(sv);
    }
    void bekerHet() {
        cout<<"3. feladat: adj megy egy számot (1-51): ";
        cin>>this->aktHet;
        cout<<"4. feladat: a fajl beolvasase siekrsen megtortent!\n";
        cout<<aktHet<<". adatai: ";
        kiir(lottoSzamok[aktHet-1]);
    }
    void feladat5() {
        int szam=1;
        cout<<"7. Feladat: ";
        while (szam<=90 && benneVane(szam)) {
            szam++;
        }
        if (szam<=90) {
            cout<<"Van "<<szam<<endl;
        } else {
            cout<<"Nincs "<<endl;
        }
    }
    void megszamolParatlan() {
        int db=0;
        for (int i=0; i<lottoSzamok.size(); i++) {
            for (int j=0; j<lottoSzamok[i].size(); j++) {
                if (lottoSzamok[i][j]%2==1) {
                    db++;
                }
            }
        }
        cout<<"6. feladat: a páratlan számok száma: "<<db<<endl;
    }

    void fajlbair() {
        ofstream f("lotto52.ki");
        for (int i=0; i<lottoSzamok.size(); i++) {
            for (int j=0; j<lottoSzamok[i].size(); j++) {
                f<<lottoSzamok[i][j]<<" ";
            }
            f<<endl;
        }
        f.close();
        cout<<"7. feladat: a lottószámot hozzáfűztük, és fájlba írtuk!"<<endl<<endl;;
    }


    void statisztika() {
        cout<<"8. feladat: \n";
        for (int i=1; i<=90; i++) {
            cout<<megszamol(i)<<" ";
            if (i%15==0) {
                cout<<endl;
            }
        }
    }

    void kiirPrim() {
        cout<<"9. feladat: ";
        //vector<int> prim={2,3,5,7,11,13...};
        for (int i=1; i<=90; i++) {
            if (prime(i) && !benneVane(i)) {
                cout<<i<<" ";
            }
        }
    }
};

int main() {
    Lotto l;
    l.beker();
    l.bekerHet();
    l.feladat5();
    l.megszamolParatlan();
    l.fajlbair();
    l.statisztika();
    l.kiirPrim();
    return 0;
}
