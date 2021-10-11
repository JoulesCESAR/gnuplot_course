reset
set term tikz standalone size 11cm, 13cm
set output 'ejercicio1.tex'

C = 91.936
tc= 278.5

set arrow from 278.5,0 to 278.5,17 dt 2 lc 'red' nohead 
f(x) = (N*(M**2))/(3*k*abs(x-tc))

g(x) = (x>278.5) ? 1/f(x) : 1/0 

set xlabel 'T[K]'
set ylabel '$\chi$'
set label '$\Theta_{C}$' at 260.5,-0.5 textcolor rgb 'red'
set label '$1/\chi$' at 350, 4 textcolor 'red'
set label '\textbf{Curie-Weiss law}' at 105,11
set label '$\chi = \frac{C}{(T-\Theta_{C})}$' at 115,10

unset key 
set title 'Ferromagnetic susceptibility'
plot[0:410][0:17] f(x) lw 2.5 lc rgb 'blue', g(x) dt 2 lc 'red'

unset output
system("pdflatex ejercicio1")