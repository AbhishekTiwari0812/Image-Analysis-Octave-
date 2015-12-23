#include <iostream>
#include <fstream>

using namespace std;

int main(){
    ifstream in;
    in.open("prime_list_big.txt");
    ofstream rMat,gMat,bMat;
    rMat.open("red_matrix.txt");
    gMat.open("green_matrix.txt");
    bMat.open("blue_matrix.txt");
    int red,green,blue;
    char c;
    int row=0;
    int column=0;
    rMat<<"[";
    gMat<<"[";
    bMat<<"[";
    int image_size=512;
    while(row<image_size){
        column=0;
        while(column<image_size){
            in>>c;
            red=(c-'0')*100;
            in>>c;
            red+=(c-'0')*10;
            in>>c;
            red+=(c-'0')*1;
            in>>c;
            green=(c-'0')*100;
            in>>c;
            green+=(c-'0')*10;
            in>>c;
            green+=(c-'0')*1;
            in>>c;
            blue=(c-'0')*100;
            in>>c;
            blue+=(c-'0')*10;
            in>>c;
            blue+=(c-'0')*1;
            column++;
            rMat<<(red%256)<<" ";
            gMat<<(green%256)<<" ";
            bMat<<(blue%256)<<" ";
        }
        rMat<<";\n";
        gMat<<";\n";
        bMat<<";\n";
        row++;
    }
    rMat<<"] ";
    gMat<<"]";
    bMat<<"]";
    in.close();
    rMat.close();
    gMat.close();
    bMat.close();
}
