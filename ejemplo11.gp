reset
set term tikz standalone size 10cm, 10cm 
set output 'ejemplo11.tex'

set xrange[-2:2] 
set yrange[-2:2]
set isosamples 50
set view map
unset surface
set hidden3d
set contour base
set cntrparam levels 10
set title 'Nivel curves for $f(x,y)$'
splot exp(-0.0001*x)*sin(x*y)*cos(x-3*y) notitle

unset output
system("pdflatex ejemplo11")