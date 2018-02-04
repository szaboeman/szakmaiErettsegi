#include <iostream>
#include <string>

using namespace std;

struct SMegyek {
    string nev, szekhely,regio;
    float terulet;
    int nep,tel,kis,jar;
};


int main() {

    /* 3. struktúra típusú tömb manuális kezdõérték beállítás */
        SMegyek tomb[100]={ {"Bacs-Kiskun", "Kecskemet", "Del-Alfold", 8445.15, 524841, 119, 10, 11},
                        {"Baranya", "Pecs", "Del-Dunantul", 4429.6, 391, 455301, 9, 10},
                        {"Bekes", "Bekescsaba", "Del-Alfold", 5631.05, 361802, 75, 8, 9},
                        {"Borsod-Abauj-Zemplen", "Miskolc", "Eszak-Magyarorszag", 7247.17, 684793, 358, 15, 16}};
    int hossz=4;
    for (int i=0; i<hossz; i++) {
        cout<<tomb[i].nev<<"\t"<<tomb[i].tel<<endl;
    }



    return 0;
}
