reset

set grid
set xlabel 'x'
set ylabel 'y'
set title 'My second fitting data plot'

set key at 3.5,6

plot 'data2.txt' title 'Data' lc rgb 'red', 3.06999*x**2 - 4.14424*x + 2.93278 title 'f(x) = a x^2 + b x + c' lw 2