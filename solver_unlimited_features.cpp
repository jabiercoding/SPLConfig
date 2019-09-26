#include <iostream>
#include <cstdio>
#include <cstdlib>
#include <climits>
#include <queue>
#include <algorithm>
#include <vector>
#include <list>
#include <set>
#include <stack>
#include <map>
#include <fstream>
#include <cstring>
#include <cmath>
#include <unistd.h>
#include <sstream>
using namespace std;

//trocar para 0 para desabilitar output
#if 1
#define DEBUG(x) cout << x << endl
#define PAUSE() cin.get(); cin.get()
#else
#define DEBUG(x)
#define PAUSE()
#endif

#define TRACE(x) DEBUG(#x << " = " << x)
#define DEBUGS() DEBUG("***************************")
#define MAX 1

typedef unsigned long long ullong;

struct Bitset{
    vector<ullong> bset;

    Bitset(int n){
        bset = vector<ullong>((n-1)/64+1, 0);
    }

    Bitset(int a, int b){
        int sa = a/64, sb = b/64;
        int ra = a%64, rb = b%64;
        bset = vector<ullong>(sb+1, 0);
        for (int i = sa+1; i < sb; i++)
            bset[i] = ~0LL;
        bset[sa] = ~((1LL<<ra)-1);
        if (sa == sb) bset[sb] &= (1LL<<rb)-1;
        else bset[sb] = (1LL<<rb)-1;
    }

    void set(int i){
        bset[i/64] |= (1LL<<(i%64));
    }

    void del(int i){
        bset[i/64] &= ~(1LL<<(i%64));
    }

    bool get(int i){
        return bset[i/64] & (1LL<<(i%64));
    }

    bool operator&(Bitset &b){
        for (int i = 0; i < bset.size(); i++)
            for (int j = 0; j < b.bset.size(); j++)
                if (bset[i] & b.bset[j])
                    return true;
        return false;
    }

    void operator=(const Bitset &b){
        bset = b.bset;
    }

    friend ostream & operator<<(ostream &os, const Bitset& b){
        for (int i = 0; i < b.bset.size(); i++)
            os << b.bset[i] << "=";
        return os;
    }
};

struct Bag{
    Bitset &inside;
    double tcost, tvalue;

    Bag(int n) : inside(*new Bitset(n)){
    }

    void operator=(const Bag &b){
        inside = b.inside;
        tcost = b.tcost;
        tvalue = b.tvalue;
    }
};

struct Node{
    int index, parent, label;
    int type;
    double cost, value;
    bool isMandatory;

    Node(int i = 0, int p = -1, int v = 0, int t = 0): index(i), parent(p), value(v), type(t) {
        cost = 0;
        value = 5;
        isMandatory = false;
    }
};

struct Graph{
    vector<Node> nodes;
    vector< vector<int> > edges;
    int size;
};

void init(Graph &g, int v){
    g.size = v;
    g.nodes.resize(v);
    g.edges.resize(v);
    for (int i = 0; i < v; i++){
        g.nodes[i].index = i;
        g.edges[i].clear();
    }
}

bool operator<(const Node &a, const Node &b){
    return a.value * b.cost < b.value * a.cost;
}

map<string, int> nameItems;
map<int, string> reverseItems;
vector<int> order;

Bag ans(2);
vector<string> restrictions;
vector<int> variables;

//TIME configurations 
int TIME = -1;
time_t begin;

void dfs(Graph &g, int id = 0){
    g.nodes[id].label = order.size();
    order.push_back(id);
    for (int i = 0; i < g.edges[id].size(); i++){
        dfs(g, g.edges[id][i]);
    }
}

bool works(Bag &b, Graph &g){
    for (int i = 0; i < g.size; i++){
        int lb = g.nodes[i].label;
        if (g.nodes[i].type != 0 && b.inside.get(lb)){
            bool ok = false;
            for (int j = 0; j < g.edges[i].size(); j++){
                int lb2 = g.nodes[g.edges[i][j]].label;
                if (b.inside.get(lb2)){
                    ok = true;
                    break;
                }
            }
            if (!ok) return false;
        }
    }
    return true;
}

int eval(stringstream &s){
    int v;
    string op = "", backop = "o";
    stack<int> vars;
    while (s >> op){
        if (op == "a" || op == "o") backop = op;
        else if(op == "i" || op == "s"){
            bool ans = false;
            while (!vars.empty()){
                ans |= vars.top();
                vars.pop();
            }
            int ok = eval(s);
            if (ok == 2) return 2;
            if (op == "i")
                return !ans | ok;
            else
                return !(ans ^ ok);

        }
        else{
            stringstream buf;
            buf << op;
            buf >> v;
            int av = abs(v);
            --av;
            if (variables[av] == 2) return 2;
            bool ans = (v > 0 ? variables[av] : !variables[av]);
            if (backop == "a") vars.top() &= ans;
            else if (backop == "o") vars.push(ans);
        }
    }
    while (!vars.empty()){
        if (vars.top()) return true;
        vars.pop(); 
    }
    return false;
}

bool evaluateRestrictions(){
    for (int i = 0; i < restrictions.size(); i++){
        stack<int> par;
        stack< pair<int, int> > vars;
        int v;
        stringstream ss;
        ss << restrictions[i];
        if (!eval(ss)) return false;
    }
    return true;
}

void backtracking(Bag &b, Graph &g, double K, int id = 0){
    //Mata por tempo

    if (TIME != -1){
        int seconds = difftime(time(NULL), begin);
        if (seconds > TIME)
            return;
    }

    
    //fim do branch and bound
    if (id >= g.size){
        if (works(b, g) && (ans.tvalue < b.tvalue || (ans.tvalue == b.tvalue && b.tcost < ans.tcost))){
            ans = b;
            cout << "\n"
                 << " \t#########################################\n"
                 << " \t#          NEW SOLUTION FOUND           #\n"
                 << " \t#########################################\n"
                 << "\n"
                 << "       Cost:\t" << ans.tcost << "\n"
                 << "       Benefit:\t" << ans.tvalue << "\n"
                 << "       ID:\t" << ans.inside << "\n\n"
                 << "****************************************************************\n\n";
        }
        return;
    }

    int actual = order[id], parent = g.nodes[actual].parent;

    //Para colocar o elemento na mochila, é necessário verificar se não ultrapassa
    //o valor da mochila e seus precedentes já estão nela

    if (parent == -1 || (b.inside.get(g.nodes[parent].label) && g.nodes[actual].cost + b.tcost <= K)){
        bool ok = true;
       

 
        if (parent != -1 && g.nodes[parent].type == 2){
            Bitset mask(g.nodes[parent].label+1, id);
            if (mask & b.inside){ 
                ok = false;
            }
        }

        if (ok){
            b.inside.set(id);
            b.tcost += g.nodes[actual].cost;
            b.tvalue += g.nodes[actual].value;
            variables[actual] = 1;

            //if (evaluateRestrictions())
                backtracking(b, g, K, id+1);

            variables[actual] = 2;
            b.tvalue -= g.nodes[actual].value;
            b.tcost -= g.nodes[actual].cost;
            b.inside.del(id);
        }
    }

    if (!g.nodes[actual].isMandatory || !(b.inside.get(g.nodes[parent].label))){
        variables[actual] = 0;
        //if (evaluateRestrictions())
            backtracking(b, g, K, id+1);
        variables[actual] = 2;
    }

}

//0 1 109 117 194 195 197

int main(int argc, char **argv){
    char c;
    fstream input, company, costumer, output;
    stringstream ss;
    while ((c = getopt(argc, argv, "i:m:c:o:t:")) != -1){
        switch (c){
            case 'i':
                input.open(optarg, fstream::in);
                break;
            case 'm':
                company.open(optarg, fstream::in);
                break;
            case 'c':
                costumer.open(optarg, fstream::in);
                break;
            case 'o':
                output.open(optarg, fstream::out);
                break;
            case 't':
                ss << optarg;
                ss >> TIME;
                time(&begin);
                break;
            default:
                cout << "Invalid arguments!" << endl;
                abort();
        }
    }

    if (!input.is_open() || !company.is_open() || !costumer.is_open() || !output.is_open()){
        cout << "Insufficient arguments!" << endl;
        abort();
    }

    int n, q;
    double K = 0;
    Graph g;
    input >> n >> q;
    ans = Bag(n);
    init(g, n);
    variables.clear();
    variables.resize(n, 2);

    cout << "> READING INPUT FILE" << endl;
    cout << "> GETTING NODE INFORMATION" << endl;
    for (int i = 0; i < n; i++){
        string s;
        input >> s >> g.nodes[i].isMandatory >> g.nodes[i].type;
        nameItems[s] = i;
        reverseItems[i] = s;
    }

    cout << "> READING TREE" << endl;
    for (int i = 0; i < n-1; i++){
        int a, b;
        input >> a >> b;
        g.edges[a-1].push_back(b-1);
        g.nodes[b-1].parent = a-1;
    }

    cout << "> GETTING COMPANY INFORMATION" << endl;
    for (int i = 0; i < n; i++){
        string s = "";
        char c = ' ';
        while (c != '=' && !company.eof()){
            company >> c;
            if (c != '=') s += c;
            if (c == '#') break;
        }
        if (c == '#' || company.eof()){
            getline(company, s);
            continue;
        }
        int id = nameItems[s];
        company >> g.nodes[id].cost;
        if (g.nodes[id].cost < 0) g.nodes[id].cost = 0;
    }
    company.close();
    cout << "> COMPANY: DONE!" << endl;

    cout << "> GETTING COSTUMER INFORMATION" << endl;
    while (!costumer.eof()){
        string s = "";
        char c = ' ';
        while (c != '=' && !costumer.eof()){
            costumer >> c;
            if (c != '=') s += c;
            if (c == '#') break;
        }
        if (c == '#' || costumer.eof()){
            getline(costumer, s);
            continue;
        }
        if (s == "budget-SPLConfig"){
            costumer >> K;
            continue;
        }
        int id = nameItems[s];
        costumer >> g.nodes[id].value;
    }
    costumer.close();
    cout << "> COSTUMER: DONE!" << endl;

    cout << "> READING CONSTRAINTS OF THE INPUT FILE" << endl;
    string aux;
    getline(input, aux);
    for (int i = 0; i < q; i++){
        string aux;
        getline(input, aux);
        restrictions.push_back(aux);
    }
    input.close();
    cout << "> INPUT: DONE!" << endl;

    cout << "> BUDGET=" << K << endl;
    
    Bag b(n);
    b.tvalue = b.tcost = 0;
    ans = b;

    /* Define a ordem das caracteristicas
       e realiza o algoritmo de backtracking */
    cout << "> SORTING ITEMS" << endl;
    dfs(g);
    cout << "> RUNNING BACKTRACKING" << endl;
    backtracking(b, g, K);

    output << "TOTAL VALUE: " << ans.tvalue << "\n";
    output << "TOTAL PRICE: " << ans.tcost << "\nITEMS:\n";

    for (int i = 0; i < g.size; i++){
        if (ans.inside.get(i)){
            output << reverseItems[order[i]] << "\n";
        }
    }
    output.close();
    cout << "> COMPLETE!" << endl;

    return 0;
}
