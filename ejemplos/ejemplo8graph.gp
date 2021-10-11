reset

set grid
set xlabel 'x'
set ylabel 'y'
set title 'My first fitting data plot'

set key at 2.8,6

plot 'data.txt' title 'Data' lc rgb 'red', 2.63106*x + 4.99387 title 'f(x) = a x+b' lw 2