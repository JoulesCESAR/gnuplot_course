punto_1="<echo 5 8"
punto_2="<echo 5 4"
f(x)= (x<5) ? -(x-5)**2+8 : 1/0 
g(x)= (x>5) ? (x-5)**2+4 : 1/0
set zeroaxis
set xrange [-1:8]
set yrange [-5:15]
set label "x_{0}" at 5,-1
set label "Li" at -0.5,8
set zeroaxis lt 8 lw 2
set title "Limites laterales distintos"
set arrow 1 from 0,8 to 5,8 nohead lt 0 lw 2
set arrow 2 from 5,0 to 5,4 nohead lt 0 lw 2
set arrow 3 from 3,12 to 4.9,8.4 lt 1 lw 2
set linetype 1 lc rgb '#A3001E'
set label textcolor rgb "cyan" 'Discontinuity point' at 1.8,12.5
set label textcolor rgb "blue" 'f(x<x_0)' at 2,5
set label textcolor rgb "blue" 'f(x>x_0)' at 6.7,11
set style fill transparent solid 0.35 noborder
filter(x,min,max) = (x > min && x < max) ? x : 1/0
plot f(x) lt 1 lw 3 lc rgb 'red' notitle, \
     g(x) lt 1 lw 3 lc rgb 'blue' with filledcurves above y=0 notitle, \
     g(x) lt 1 lw 3 lc rgb 'red' notitle,\
     punto_1 pt 6 ps 2 lt 7 lw 2 notitle,punto_2 pt 7 lt 7 ps 2 notitle


