set pm3d
set xrange[-2:2] 
set yrange[-2:2]
set isosamples 50
set pm3d
unset surface
set view map
set contour
set key outside
splot exp(-0.2*x)*cos(x*y)*sin(y) notitle

