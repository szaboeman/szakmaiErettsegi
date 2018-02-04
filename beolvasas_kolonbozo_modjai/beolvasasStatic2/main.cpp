#include <iostream>

using namespace std;


int main() {

    /* 2 dimenziós tömb, manuális kezdõérték megadás*/
    int tomb[100][100]={{1,2,3},
                        {23,2,54},
                        {50,1,2}};
    int n=3,m=3;
    for (int i=0; i<n; i++) {
        for (int j=0; j<m; j++) {
            cout<<tomb[i][j]<<" ";
        }
        cout<<endl;
    }


    return 0;
}
