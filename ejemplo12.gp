# This is plot of quantum harmonic oscilator
reset
set term tikz standalone size 10cm, 10cm 
set output 'ejemplo12.tex'

set xrange[-2:2] 
set yrange[0:20]

k=25
h=1
w=2.85
E(x) = (x+0.5)*h*w    #Oscilator energy

unset key
set arrow from 0,0 to 0,17 lw 2 dt 2 lc 'blue'
set label '$Energy\quad E = (n+\frac{1}{2})\hbar\omega$' at -1,18 textcolor 'blue' 
set xlabel 'internuclear separation'
set arrow from 0.4,10.2 to 0.4,E(4)-0.2 lc 'red' 
set label '$\hbar\omega$' at 0.43,11.5 textcolor 'red' 
set arrow from 1.2,14.8 to 0.65,12 lc 'red'
set label 'Energy transition' at 0.5,15.2 textcolor 'red'
set label '$E_{p}=\frac{1}{2}k x^2$' at -1.95,14 textcolor 'black'

set label '$n=0$' at 1.2,E(0)+0.4 textcolor 'blue'
set label '$n=1$' at 1.2,E(1)+0.4 textcolor 'blue'
set label '$n=2$' at 1.2,E(2)+0.4 textcolor 'blue'
set label '$n=3$' at 1.2,E(3)+0.4 textcolor 'blue'
set label '$n=4$' at 1.2,E(4)+0.4 textcolor 'blue'

plot 0.5*k*x**2 lc rgb 'black' lw 2 notitle, E(0), E(1), E(2), E(3), E(4)

unset output
system("pdflatex ejemplo12")
