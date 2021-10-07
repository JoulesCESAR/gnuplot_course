set xrange [-5:5]
set yrange [-60:60]
plot 7*x+2 lw 1.2 lc rgb 'yellow',\
 -2*x**2+3*x-3 lw 1.2 lc rgb 'red',\
 (x**2-3*x)/x**2-2 lw 1.2 lc rgb 'cyan' dt 4,\
 5*sin(x) lw 1.2 lc rgb 'blue' dt 2