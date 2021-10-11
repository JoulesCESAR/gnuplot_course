reset
set term tikz standalone size 10cm, 10cm
set output 'ejercicio22.tex'

m1=1
m2=3
l=7
G=100

f(x)= -(G*m1*m2)/x + l**2/(0.75*x**2) 
g(x)= -(G*m1*m2)/x 
h(x)= l**2/(0.75*x**2)

unset key
set xlabel '$r$'
set ylabel 'energy'
set title 'Central potential'
set arrow from 3.9,199 to 0.3,-210 dt 2 lc 'black'  
set label '$V_{eff}(r)$' at 4,200 textcolor 'black'
set label '$V_{g}(r)$' at 1.5,-300 textcolor 'blue'
set label '$V_{cf}(r)$' at 1.0,200 textcolor 'blue'
set label '$E>0$' at 6.0,130 textcolor 'red'
set label '$E<0$' at 6.0,-190 textcolor 'red'

plot[0:10][-500:500] f(x) lw 2 lc rgb 'cyan',\
           g(x) lw 2 lc rgb 'blue' dt 2,\
           h(x) lw 2 lc rgb 'blue' dt 2,\
           0 lw 2 lc rgb 'black' dt 2, -220 lw 2 lc rgb 'red', 100 lw 2 lc rgb 'red'
         

unset output
system("pdflatex ejercicio22")