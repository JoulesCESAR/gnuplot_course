reset
set term tikz standalone size 11.5cm, 11.5cm 
set output 'ejemplo10.tex'

#set pm3d
set xrange[-2:2] 
set yrange[-2:2]
set isosamples 35
set hidden3d
#set key outside
set title '$f(x,y) = e^{-0.0001x}\sin{(xy)}\cos{(x-3y)}$'
set xlabel '$x$ axis'
set ylabel '$y$ axis'
set zlabel '$z$ axis'
set contour both 
unset key
splot exp(-0.0001*x)*sin(x*y)*cos(x-3*y) 

unset output
system("pdflatex ejemplo10")