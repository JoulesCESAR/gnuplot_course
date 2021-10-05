set pm3d
set palette gray negative
set xrange[-2:2] 
set yrange[-2:2]
set isosamples 50
set pm3d
unset surface
set view map
set contour
set key outside
set palette gray negative
splot exp(-0.2*x)*cos(x*y)*sin(y) notitle

