reset
set term tikz standalone size 11cm, 13cm
set output 'ejemplo6.tex'

G=6.674*(10**(-11))
M=5.972*(10**(24))

m1=4.340*(10**(22))
m2=7.340*(10**(22))
m3=9*(10**(22))
m4=12.0*(10**(22))
m5=20.0*(10**(22))

V1(x)= -(G*m1*M)/x
V2(x)= -(G*m2*M)/x
V3(x)= -(G*m3*M)/x
V4(x)= -(G*m4*M)/x
V5(x)= -(G*m5*M)/x

Veff1(x)= (10**(-37))*V1(x)
Veff2(x)= (10**(-37))*V2(x)
Veff3(x)= (10**(-37))*V3(x)
Veff4(x)= (10**(-37))*V4(x)
Veff5(x)= (10**(-37))*V5(x)
set arrow from 0.5,-1.5 to 2.5,-6.5 dt 2 lc 'red'
set label '$m\uparrow$' textcolor rgb "red" at 2.5,-5.5
set label 'Energy' textcolor rgb "blue" at 4,-14.5 

#set key box
set key at 9.5,-5
set title "Gravitational potential $V(r) = -\\frac{GmM}{r}$" 
set xlabel 'r[m]'
set ylabel '$10^{-37} V(r)$ [Joules]'

plot[0:10][-25:0] Veff1(x) lw 2 lt 1 lc 'black' title '$m_1$',\
                  Veff2(x) lw 2 lt 2 lc 'green' title '$m_2$',\
                  Veff3(x) lw 2 lt 3 lc 'blue' title '$m_3$',\
                  Veff4(x) lw 2 lt 4 lc 'red' title '$m_4$',\
                  Veff5(x) lw 2 lt 5 lc 'yellow' title '$m_5$',\
                  -15 with lines dt 4 lt 3 lw 1 lc "blue" notitle # En 20

unset output
system("pdflatex ejemplo6")

