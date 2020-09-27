def initialIs_irreducible(p,d,c,v):
    field=GF(c,d-1);
    poly2=[]
    for i in field:
        for j in field:
            poly2.append(modulo(expand(i*j),c,v))
    for j in poly2: 
        if j==p:
            return false;
    return true;


def find_irreducible(c,d):
    poly=GF(c,d);
    for k in poly:
        if initialIs_irreducible(k,d,c,x):
            print(k);
            
def modulo(p,n,v):
    newp=0;
    for i in range (len(p.coefficients(v))):
        if p.coefficients(v)[i][0]!=n:
            newp=newp+p.coefficients(v)[i][Integer(0)]*x**p.coefficients(v)[i][Integer(1)]
    return newp;
            
def GF(p,k):
    x=var('x')
    poly=[]
    if k!=0:
        for i in range(p):
            new=[i*x^k +q for q in GF(p,k-1)]
            poly=poly+new
    else: 
        for i in range(p):
            poly.append(i)
    return poly

def Division(p,d,v):
    if p.degree(v)>=1 and d.degree(v)>=1:
        p=p.expand()
        d=d.expand()
        q=0
        r=p
        while p.degree(v)>=d.degree(v):
            L=(p.coefficient(v^p.degree(v))/d.coefficient(v^d.degree(v)))*v^(p.degree(v)-d.degree(v))
            p=p-(L*d).expand()
            q=q+L
        r=p
        return [q,r]
    else:
        return "invalid input, please input a polynomial"