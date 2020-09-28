# discreteMathProject 


<!-- TABLE OF CONTENTS -->
## Table of Contents

* [About the Project](#about-the-project)
* [Getting Started](#getting-started)
  * [Installation](#Installation)
  * [Usage](#Usage)

<!-- ABOUT THE PROJECT -->
## About The Project
This is a discrete math research project repository of Mathmetical experiments conducted by Professor Edinah K. Gnang at Johns Hopkins University and two of his students Alan Li and Wenxuan Lu. We are interested in the composition arithmetic of polynomials in the finite field. 

Discovered by French Mathmetician Évariste Galois, the finite field with p^n elements, or GF(p), where p is a prime number, is simply the ring of integers modulo p. In other words, one can perform arithmetic operations (addition, subtraction, multiplication) using the usual operation on integers, followed by reduction modulo p. Besides integer aritimetic, the similar property was discovered in polynomial arithmetic.

Finite field arithmetic on Wikipedia: https://en.wikipedia.org/wiki/Finite_field_arithmetic

We want to explore if polynomial composition has the similar arithmetic properties in the finite field. Therefore, we started with using SageMath to implement functions that help with the computation of polynomial composition in the finite field.

<!-- GETTING STARTED -->
## Getting Started

### Installation
Step 1. Install [sage](http://sagemath.org/)
Step 2. download the [compositional_irreducible_mod2.ipynb](https://github.com/gnang/HypermatrixAlgebraPackage/blob/master/Hypermatrix_Algebra_Package_code.sage) into your working directory and open SageMath 9.0 Notebook
Step 3. In SageMath Notebook, open the compositional_irreducible_mod2.ipynb in your working directory

### Usage

Use any functions in the .ipynb file to do the computation you want. All functions are comment with it's functionality and examples.

For example,
```Sage
  def GF(p,q,v):
    """
    Outputs elements of finite field or Galois field GF(p^q). Where output all the polynomials
    in the varible v that have coefficients less than p and degree of at most q-1.
    

    EXAMPLES:

    ::
        
        sage: p = 2; q = 3; v = var('x') 
        sage: GF(p,q,v)
        [0, 1, x, x + 1, x^2, x^2 + 1, x^2 + x, x^2 + x + 1]
        sage: p = 5; q = 2; v = var('x')
        sage: GF(p,q,v)
        [0, 1, 2, 3, 4, x, x + 1, x + 2, x + 3, x + 4, 2*x, 2*x + 1, 2*x + 2, 2*x + 3, 2*x + 4,
        3*x, 3*x + 1, 3*x + 2, 3*x + 3, 3*x + 4, 4*x, 4*x + 1, 4*x + 2, 4*x + 3, 4*x + 4]
        sage: p = 1; q =1 ; v =var('x')
        sage: GF(p,q,v)
        [0]

        


    AUTHORS:
    - Alan Li and Wenxuan Lu
    """
    poly=[];
    if q!=1:
        for i in range(p):
            new=[i*v^(q-1) + k for k in GF(p,q-1,v)]
            poly=poly+new
    else:
        for i in range(p):
            poly.append(i)
    return poly

```
