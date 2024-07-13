#include <iostream>
#include <vector>
#include <algorithm>
#include <string>
#include <set>
#include <unordered_set>
#include <map>
#include <unordered_map>
#include <list>
#include <queue>
#include <deque>
#include <stack>
#include <bitset>
#include <numeric>
#include <cmath>
#include <utility>
#include <tuple>
#include <fstream>
#include <chrono>
#include <time.h>
#include <random>

#define g(x, y) get<y>(x)
#define fr first
#define sc second
#define all(x) x.begin(), x.end()
#define rall(x) x.rbegin(), x.rend()
#define start ios::sync_with_stdio(0), cin.tie(0), cout.tie(0)
#define pb push_back
#define pf push_front

using namespace std;
using str = string;
using ll = long long;
using ull = unsigned long long;
using db = long double;
//using lll = __int128;
//using ulll = unsigned __int128;
using pll = pair<ll, ll>;
using tlll = tuple<ll, ll, ll>;
using pii = pair<int, int>;
using pdd = pair<db, db>;
using vi = vector<int>;
using vvi = vector<vi>;
using vpii = vector<pii>;
using vl = vector<ll>;
using vvl = vector<vl>;
using vvvl = vector<vvl>;
using vpll = vector<pll>;
using vtlll = vector<tlll>;
const int CON = 1e5;
using bs = bitset<CON>;

const int INF = 1e9;
const ll LINF = 1e18, mod = 1e9 + 7, mod1 = 227, mod2 = 667, osn1 = 1e9 + 7, osn2 = 1e9 + 9, S = 20, SQR = 500;
const db eps = 0.0000000001, Pi = 3.141592654;

random_device rd;
mt19937 rad(rd());

/*
istream& operator>>(istream& in, __int128 &a) {
    string s; in >> s;
    a = 0;
    if (s == "0") return in;
    for (short i = (s[0] == '-'); i < s.size(); i++)
        a = a * 10 + (s[i] - '0');
    if (s[0] == '-') a *= -1;
    return in;
}
istream& operator>>(istream& in, unsigned __int128 &a) {
    string s; in >> s;
    a = 0;
    if (s == "0") return in;
    for (short i = 0; i < s.size(); i++)
        a = a * 10 + (s[i] - '0');
    return in;
}
ostream& operator<<(ostream& out, __int128 a) {
    __int128 b = a;
    if (b < 0)out << '-', b *= -1;
    string s;
    do {
        s.push_back(b % 10 + '0');
        b /= 10;
    } while (b > 0);
    for (int i = s.size() - 1; i >= 0; i--)
        out << s[i];
    return out;
}
ostream& operator<<(ostream& out, unsigned __int128 a) {
    unsigned __int128 b = a;
    string s;
    do {
        s.push_back(b % 10 + '0');
        b /= 10;
    } while (b > 0);
    for (int i = s.size() - 1; i >= 0; i--)
        out << s[i];
    return out;
}
string to_string(__int128 a) {
    string s;
    bool bo = 0;
    if (a < 0) a *= -1, s.push_back('-'), bo = 1;
    do {
        s.push_back(a % 10 + '0');
        a /= 10;
    } while (a > 0);
    for (int i = 0; i < (s.size() - bo) / 2; i++)
        swap(s[i + bo], s[s.size() - i - 1]);
    return s;
}
string to_string(unsigned __int128 a) {
    string s;
    do {
        s.push_back(a % 10 + '0');
        a /= 10;
    } while (a > 0);
    for (int i = 0; i < s.size() / 2; i++)
        swap(s[i], s[s.size() - i - 1]);
    return s;
}
__int128 stolll(string s) {
    __int128 a = 0;
    if (s == "")return a;
    for (short i = (s[0] == '-'); i < s.size(); i++)
        a = a * 10 + (s[i] - '0');
    if (s[0] == '-') a *= -1;
    return a;
}
unsigned __int128 stoulll(string s) {
    unsigned __int128 a = 0;
    if (s == "")return a;
    for (short i = 0; i < s.size(); i++)
        a = a * 10 + (s[i] - '0');
    return a;
}
*/

istream& operator>>(istream& in, pll& a) {
    in >> a.first >> a.second;
    return in;
}
istream& operator>>(istream& in, tlll& a) {
    in >> get<0>(a) >> get<1>(a) >> get<2>(a);
    return in;
}
istream& operator>>(istream& in, pii& a) {
    in >> a.first >> a.second;
    return in;
}
istream& operator>>(istream& in, pdd& a) {
    in >> a.first >> a.second;
    return in;
}
istream& operator>>(istream& in, vi& a) {
    for (auto& i : a)in >> i;
    return in;
}
istream& operator>>(istream& in, vvi& a) {
    for (auto& i : a)in >> i;
    return in;
}
istream& operator>>(istream& in, vpii& a) {
    for (auto& i : a)in >> i;
    return in;
}
istream& operator>>(istream& in, vl& a) {
    for (auto& i : a)in >> i;
    return in;
}
istream& operator>>(istream& in, vvl& a) {
    for (auto& i : a)in >> i;
    return in;
}
istream& operator>>(istream& in, vpll& a) {
    for (auto& i : a)in >> i;
    return in;
}
istream& operator>>(istream& in, vtlll& a) {
    for (auto& i : a)in >> i;
    return in;
}
istream& operator>>(istream& in, vector<str>& a) {
    for (auto& i : a)in >> i;
    return in;
}

ostream& operator<<(ostream& out, pll& a) {
    out << a.first << " " << a.second << "\n";
    return out;
}
ostream& operator<<(ostream& out, tlll& a) {
    out << get<0>(a) << " " << get<1>(a) << " " << get<2>(a) << "\n";
    return out;
}
ostream& operator<<(ostream& out, pii& a) {
    out << a.first << " " << a.second << "\n";
    return out;
}
ostream& operator<<(ostream& out, pdd& a) {
    out << a.first << " " << a.second << "\n";
    return out;
}
ostream& operator<<(ostream& out, vi& a) {
    for (auto& i : a)out << i << " ";
    return out;
}
ostream& operator<<(ostream& out, vvi& a) {
    for (auto i : a)out << i << "\n";
    return out;
}
ostream& operator<<(ostream& out, vpii& a) {
    for (auto i : a)out << i << "\n";
    return out;
}
ostream& operator<<(ostream& out, vl& a) {
    for (auto& i : a)out << i << " ";
    return out;
}
ostream& operator<<(ostream& out, vvl& a) {
    for (auto i : a)out << i << "\n";
    return out;
}
ostream& operator<<(ostream& out, vpll& a) {
    for (auto i : a)out << i << "\n";
    return out;
}
ostream& operator<<(ostream& out, vtlll& a) {
    for (auto i : a)out << i << "\n";
    return out;
}
ostream& operator<<(ostream& out, vector<str>& a) {
    for (auto& i : a)out << i << " ";
    return out;
}
ostream& operator<<(ostream& out, set<ll>& a) {
    for (auto i : a)out << i << " ";
    return out;
}

ll bip(ll a, ll n, ll m = mod) {
    ll res = 1;
    while (n) {
        if (n & 1)
            res = res * a % m;
        a = a * a % m;
        n >>= 1;
    }
    return res;
}

class Frac {
    //void fuf(string x) - stoll
    long long a, b;
    void Norm() {
        if (b < 0)a *= -1, b *= -1;
        long long g = gcd(a, b);
        a /= g, b /= g;
    }
    void fuf(short x) {
        a = x, b = 1;
    }
    void fuf(short int x) {
        a = x, b = 1;
    }
    void fuf(int x) {
        a = x, b = 1;
    }
    void fuf(unsigned int x) {
        a = x, b = 1;
    }
    void fuf(long long x) {
        a = x, b = 1;
    }
    void fuf(unsigned long long x) {
        a = x, b = 1;
    }
    void fuf(float x) {
        string s = to_string(x);
        if (s.find('.') != s.npos)
            x *= pow(10, s.size() - s.find('.') - 1), b = pow(10, s.size() - s.find('.') - 1);
        a = x;
    }
    void fuf(double x) {
        string s = to_string(x);
        if (s.find('.') != s.npos)
            x *= pow(10, s.size() - s.find('.') - 1), b = pow(10, s.size() - s.find('.') - 1);
        a = x;
    }
    void fuf(long double x) {
        string s = to_string(x);
        if (s.find('.') != s.npos)
            x *= pow(10, s.size() - s.find('.') - 1), b = pow(10, s.size() - s.find('.') - 1);
        a = x;
    }
    void fuf(string x) {
        if (x.find_first_of("/:") == x.npos)
            a = stoll(x);
        else
            a = stoll(x.substr(0, x.find_first_of("/:"))), b = stoll(x.substr(x.find_first_of("/:") + 1));
    }
    friend long long tol(Frac f);
    friend long double tod(Frac f);
    friend Frac todd(Frac f);
    friend istream& operator>>(istream& in, Frac& f);
    friend ostream& operator<<(ostream& out, Frac f);
    friend Frac operator-(Frac f);
    friend bool operator<(const Frac f1, const Frac f2);
    friend bool operator>(const Frac f1, const Frac f2);
    friend bool operator<=(const Frac f1, const Frac f2);
    friend bool operator>=(const Frac f1, const Frac f2);
    friend bool operator==(const Frac f1, const Frac f2);
    friend bool operator!=(const Frac f1, const Frac f2);
public:
    Frac() {
        a = 0, b = 1;
        Norm();
    }
    template <typename T1>
    Frac(T1 x) {
        fuf(x);
        Norm();
    }
    /*template <typename T1, typename T2>
    Frac(T1 x, T2 y) {

        Norm();
    }*/
    void abs() { if (a < 0)a *= -1; }
    void rev() { swap(a, b); }
    Frac& operator+=(Frac f) {
        a = a * f.b + f.a * b;
        b *= f.b;
        Norm();
        return *this;
    }
    Frac& operator-=(Frac f) {
        a = a * f.b - f.a * b;
        b *= f.b;
        Norm();
        return *this;
    }
    Frac& operator*=(Frac f) {
        a *= f.a;
        b *= f.b;
        Norm();
        return *this;
    }
    Frac& operator/=(Frac f) {
        a *= f.b;
        b *= f.a;
        Norm();
        return *this;
    }
    string operator()(string s = "/") {
        return to_string(a) + s + to_string(b);
    }
};
long long tol(Frac f) {
    return long long(f.a / f.b);
}
long double tod(Frac f) {
    return long double(1.0) * f.a / f.b;
}
Frac todd(Frac f) {
    f.a %= f.b;
    return f;
}
istream& operator>>(istream& in, Frac& f) {
    string s; in >> s;
    if (s.find('/') == s.npos && s.find(':') == s.npos && s.find('.') == s.npos)
        f.a = stoll(s), cin >> f.b;
    else if (s.find('/') != s.npos)
        f.a = stoll(s.substr(0, s.find('/'))), f.b = stoll(s.substr(s.find('/') + 1));
    else if (s.find(':') != s.npos)
        f.a = stoll(s.substr(0, s.find(':'))), f.b = stoll(s.substr(s.find(':') + 1));
    else
        f = Frac(stod(s));
    f.Norm();
    return in;
}
ostream& operator<<(ostream& out, Frac f) {
    out << f.a * 1.0 / f.b;
    return out;
}
Frac operator+(Frac f) {
    return f;
}
Frac operator-(Frac f) {
    f.a *= -1;
    return f;
}
Frac operator+(Frac f1, Frac f2) {
    f1 += f2;
    return f1;
}
Frac operator-(Frac f1, Frac f2) {
    f1 -= f2;
    return f1;
}
Frac operator*(Frac f1, Frac f2) {
    f1 *= f2;
    return f1;
}
Frac operator/(Frac f1, Frac f2) {
    f1 /= f2;
    return f1;
}
bool operator<(const Frac f1, const Frac f2) {
    return f1.a * f2.b < f1.b * f2.a;
}
bool operator>(const Frac f1, const Frac f2) {
    return f1.a * f2.b > f1.b * f2.a;
}
bool operator<=(const Frac f1, const Frac f2) {
    return f1.a * f2.b <= f1.b * f2.a;
}
bool operator>=(const Frac f1, const Frac f2) {
    return f1.a * f2.b >= f1.b * f2.a;
}
bool operator==(const Frac f1, const Frac f2) {
    return f1.a * f2.b == f1.b * f2.a;
}
bool operator!=(const Frac f1, const Frac f2) {
    return f1.a * f2.b != f1.b * f2.a;
}
Frac abs(Frac f) {
    if (f < 0)
        f *= -1;
    return f;
}
Frac min(const Frac f1, const Frac f2) {
    return (f1 < f2 ? f1 : f2);
}
Frac max(const Frac f1, const Frac f2) {
    return (f1 > f2 ? f1 : f2);
}
Frac rev(Frac f) {
    f = 1 / f;
    return f;
}


void solve() {

}

int main() {
    start;
    int t = 1;
    //cin >> t;
    while (t--)
        solve();
}
