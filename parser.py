import sys, re

class Tree:

    def __init__(self, parent):
        self.childs = {}
        self.childs[parent] = []

    def add(self, a, b):
        if a not in self.childs:
            self.childs[a] = []
        self.childs[a].append(b)

    def __str__(self):
        s = ""
        for x, l in self.childs.iteritems():
            for y in l:
                s += str(x+1)+" "+str(y+1)+"\n"
        return s

class Parser:

    def __init__(self, filename):
        self.f = open(filename, 'r')
        self.s = []
        self.t = Tree(0)
        self.nodes = []
        self.index = 0

    def run(self):
        for line in self.f:
            m = re.search("name=\"(\w+)*\"", line)

            if m:
                name = m.group(1)
                mandatory = 0
                typeChilds = 0

                if re.search("mandatory=\"true\"", line):
                    mandatory = 1

                if re.search("<or", line):
                    typeChilds = 1
                elif re.search("<alt", line):
                    typeChilds = 2

                if (len(self.s) > 0):
                    self.t.add(self.s[len(self.s)-1], self.index)
                    if (self.nodes[self.s[len(self.s)-1]][2] != 0):
                        mandatory = 0

                if not re.search("<*/>", line):
                    self.s.append(self.index)
                self.index += 1

                self.nodes.append((name, mandatory, typeChilds))

            else:
                
                if re.search("</or|</and|</alt", line):
                    self.s.pop()

    def printTree(self):
        print len(self.nodes), 0
        for i in self.nodes:
            print i[0], i[1], i[2]
        print self.t,

            

p = Parser(sys.argv[1])
p.run()
p.printTree()
