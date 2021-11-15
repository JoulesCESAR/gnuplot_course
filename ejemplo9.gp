# This is a simple fitting graph with cuadratic function 
reset
f(x) = a*x**2 + b*x +c
FIT_LIMIT = 1e-6

fit f(x) 'data2.txt' using 1:2 via a, b, c



