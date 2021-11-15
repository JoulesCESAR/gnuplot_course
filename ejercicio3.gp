# Fitting data 
reset
#f(x) = sqrt(a*x**2+b*x+c)
g(x) = a*x**2+b*x+c
FIT_LIMIT = 1e-6

#fit f(x) 'data3.txt' using 1:2 via a, b, c
fit g(x) 'data3.txt' using 1:2 via a, b, c
