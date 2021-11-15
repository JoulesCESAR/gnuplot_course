#This is a plot of polarization in a ferroelectric crystal
reset
set term tikz standalone size 7cm, 7cm 
set output 'ejemplo7.tex'

beta = -2.92*(10**8)
g = 0.54*(10**(-10))
xi = 1.56*(10**(9)) 

w(x) = (sqrt(g) / (x* (xi*(x**2) + 0.5*beta)**0.5))*(10**9)

set xlabel '$P_{0}$ $[C/m^2]$'
set ylabel '$\xi_{180^{\circ}}$ [nm]'


set label '$P_{crit} = \sqrt{-\frac{\beta}{2\zeta}}=0.3052 C/m^2$' textcolor rgb "red" at 0.25,1.0 rotate by 90  
set arrow from 0.3052, graph 0 to 0.3052, graph 1 lc rgb 'red' dt 2 nohead

plot[0:0.75][0:12] w(x) lw 2 lt 1 lc 'blue' notitle 

unset output
system("pdflatex ejemplo7")

