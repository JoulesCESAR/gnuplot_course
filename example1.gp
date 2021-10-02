punto_1="<echo 5 8"
punto_2="<echo 5 4"
f(x)= (x<5) ? -(x-5)**2+8 : 1/0 
g(x)= (x>5) ? (x-5)**2+4 : 1/0
set zeroaxis
set xrange [-1:8]
set yrange [-5:15]
set label "a" at 5,-1
set label "Li" at -0.5,8
set zeroaxis lt 8 lw 2
set title "Limites laterales distintos"
set arrow 1 from 0,8 to 5,8 nohead lt 0 lw 2
set arrow 2 from 5,0 to 5,4 nohead lt 0 lw 2
plot f(x) lt 7 lw 3 notitle,g(x) lt 7 lw 3 notitle,punto_1 pt 6 ps 2 lt 7 lw 2 notitle,punto_2 pt 7 lt 7 ps 2 notitle

set terminal postscript enhanced color
set output 'plotexample.pdf'
replot
