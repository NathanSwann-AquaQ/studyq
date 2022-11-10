/https://projecteuler.net/problem=6
/The sum of the squares of the first ten natural numbers is 385
/The square of the sum of the first ten natural numbers is 3025
/ Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 
/ 3025 − 385 = 2640
/ Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

/ solutions
nnt:1+til@  / natural numbers to
sqr:{x*x}
{(sqr sum x)-sum sqr x} nnt 100

/ Constant time solution
nsum:{"j"$.5*x*x+1} / Sum of the first x positive integers
n2sum:{div[x*(1+2*x)*x+1;6]} / Sum of the squares of the first x positive integers
{(prd 2#nsum x)-n2sum x} 100 

/
.[-](sqr sum@;sum sqr@)@\: nnt 100
.[-]('[sqr;sum];'[sum;sqr])@\: nnt 100
.[-]('[;]./:1 reverse\(sqr;sum))@\:nnt 100
k).[-]('[;]./:1|:\(sqr;sum))@\:nnt 100
