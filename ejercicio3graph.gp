reset
set term tikz standalone size 11cm, 13cm
set output 'ejercicio3.tex'

set grid
set xlabel '$t[seg]$'
set ylabel '$x[m]$'
set title '$x = x(t)$'

set key at 3.5,120
set key spacing 1.5
f(x)=sqrt(708.048*x**2-1527.71*x+5.28453)    
g(x)=4.10262*x**2+0.0577123*x+0.584621
plot 'data3.txt' title 'Data' lc rgb 'red' ps 1.5 pt 22,\
     f(x) title '$x(t) =\sqrt{a_{1}t^2+b_{1}t+c_{1}}$' lw 2 lc 'blue',\
     g(x) title '$x(t) = a_{2}t^2+b_{2}t+c_{2}$' lw 2 lc 'cyan' 

unset output
system("pdflatex ejercicio3")