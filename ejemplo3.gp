set xrange [-5:5]
set yrange [-50:50]
set xlabel 'eje de las x'
set ylabel 'eje de las y'
set title "Mi primer gráfico en GNU Plot"
set key box
set key spacing 3 font "Helvetica, 8"
set key at -3.5,45
f(x)=7*x+2
g(x)=-2*x**2+3*x-3
h(x)=(x**2-3*x)/(x**2-2)
i(x)=5*sin(x)
plot f(x) lw 1.2 lc rgb 'yellow',\
     g(x) lw 1.2 lc rgb 'red',\
     h(x) lw 1.2 lc rgb 'cyan' dt 4,\
     i(x) lw 1.2 lc rgb 'blue' dt 2
