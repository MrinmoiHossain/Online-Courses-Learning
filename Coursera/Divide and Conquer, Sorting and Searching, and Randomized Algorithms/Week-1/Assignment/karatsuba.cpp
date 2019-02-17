#include <iostream>
#include <string>
#include <algorithm>
#include <sstream>
#include <typeinfo>
using namespace std;

template <typename T> string NumberToString(T Number){
    ostringstream ss;
    ss << Number;
    return ss.str();
}

string stringAdd(string a, string b)
{
    string s;                                           //additional output string
    if(a.length() < b.length())
        swap(a, b);

    reverse(a.begin(), a.end());                       //grater than string b
    reverse(b.begin(), b.end());                       //less than string a

    for(int i = b.length(); i < a.length(); i++)
        b += "0";

    int c = 0;
    for(int i = 0; i < a.length(); i++){
        int add = (a[i] - '0') + (b[i] - '0') + c;
        c = add / 10;
        s += (add % 10) + '0';
    }
    if(c > 0)
        s += (c % 10) + '0';

    reverse(a.begin(), a.end());                    //back to the old string - a
    reverse(b.begin(), b.end());                    //back to the old string - b
    reverse(s.begin(), s.end());                    //output string - s

    return s;
}

string karatsuba(string x, string y)
{
    int lenX = x.length(), lenY = y.length();

    if(lenX == 1 && lenY == 1){
        int temp = (x[0] - '0') * (y[0] - '0');
        return NumberToString(temp);
    }


    int maxLength = max(lenX, lenY);
    int splitPosition = maxLength / 2;

    string a = x.substr(0, splitPosition);
    string b = x.substr(splitPosition, lenX);
    string c = y.substr(0, splitPosition);
    string d = y.substr(splitPosition, lenY);

    string AB = stringAdd(a, b);
    string CD = stringAdd(c, d);

    cout << "A: " << a << endl;
    cout << "B: " << b << endl;
    cout << "C: " << c << endl;
    cout << "D: " << d << endl;
    cout << "AB: " << AB << endl;
    cout << "CD: " << CD << endl;

    //string z0 = karatsuba(a, c);
    //int z1 = karatsuba(stringAdd(a, b), stringAdd(c, d));
    //string z2 = karatsuba(b, d);

    //return z0 * pow(10, 2*splitPosition) + (z1-z0-z2) * pow(10, splitPosition) + z2;

    return NumberToString(9999);
}

int main(void)
{
    string a = "3141592653589793238462643383279502884197169399375105820974944592";
    string b = "2718281828459045235360287471352662497757247093699959574966967627";

    cout << a << " * " << b << " = " << karatsuba(a, b) << endl;

    return 0;
}
