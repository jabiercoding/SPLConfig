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

struct Node{
    int index, parent;
    int type;
    double cost, value;
    bool isMandatory, bought;

    Node(int i = 0, int p = -1, int v = 0, int t = 0): index(i), parent(p), value(v), type(t) {
        cost = 0;
        value = 5;
        isMandatory = bought = false;
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

int main(int argc, char **argv){
    char c;
    fstream input, company, costumer, verify_file;
    while ((c = getopt(argc, argv, "i:m:c:v:")) != -1){
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
            case 'v':
                verify_file.open(optarg, fstream::in);
                break;
            default:
                cout << "Invalid arguments!" << endl;
                abort();
        }
    }

    if (!input.is_open() || !company.is_open() || !costumer.is_open() || !verify_file.is_open()){
        cout << "Insufficient arguments!" << endl;
        abort();
    }

    int n, q;
    double K = 0, M = 0;
    int total_benefit = 0;
    
    Graph g;
    input >> n >> q;
    init(g, n);

    for (int i = 0; i < n; i++){
        string s;
        input >> s >> g.nodes[i].isMandatory >> g.nodes[i].type;
        nameItems[s] = i;
        reverseItems[i] = s;
    }

    for (int i = 0; i < n-1; i++){
        int a, b;
        input >> a >> b;
        g.edges[a-1].push_back(b-1);
        g.nodes[b-1].parent = a-1;
    }

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

    input.close();

    string s;
    verify_file >> s >> s;
    verify_file >> total_benefit;

    verify_file >> s >> s;
    verify_file >> M;

    verify_file >> s;
    int j = 0;
    while (!verify_file.eof()){
        verify_file >> s;
        if (verify_file.eof())
            break;
        if (nameItems.find(s) == nameItems.end()){
            cout << "ERROR\nFeature doesn't exist!\n"
                 << "Feature:\t" << s << "\n";
            return 1;
        }
        j++;
        int id = nameItems[s];
        g.nodes[id].bought = true;
    }


    for (int i = 0; i < n; i++){
        if (g.nodes[i].bought){

            int type = g.nodes[i].type;
            int count = 0;

            M -= g.nodes[i].cost;
            total_benefit -= g.nodes[i].value;

            for (int j = 0; j < g.edges[i].size(); j++){
                int nd = g.edges[i][j];

                if (!g.nodes[nd].bought && g.nodes[nd].isMandatory){
                    cout << "ERROR\nMandatory node didn't bought\n"
                         << "parent:\t" << reverseItems[i] << "\n"
                         << "child:\t" << reverseItems[nd] << "\n";
                    return 1;
                }

                if (g.nodes[nd].bought){
                    count++;
                }

            }

            if (type == 1 && count == 0){
                cout << "ERROR\nNo OR child bought\n"
                     << "parent:\t" << reverseItems[i] << "\n";
                return 1;
            }

            if (type == 2 && count == 0){
                cout << "ERROR\nNo XOR child bought\n"
                     << "parent:\t" << reverseItems[i] << "\n";
                return 1;
            }

            if (type == 2 && count > 1){
                cout << "ERROR\nMore than one XOR child bought\n"
                     << "parent:\t" << reverseItems[i] << "\n";
                return 1;
            }
        }


    }

    if (total_benefit != 0){
        cout << "ERROR\ntotal benefit invalid!\n"
            << "wrong by:\t" << total_benefit << "\n";
        return 1;

    }

    if (M != 0){
        cout << "ERROR\ntotal cost invalid!\n"
            << "wrong by:\t" << M << "\n";
        return 1;

    }

    return 0;
}
