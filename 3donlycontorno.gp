set xrange[-3:4] 
set yrange[1:5]
set isosamples 50
set view map
unset surface
set hidden3d
set key outside
set contour base
set cntrparam levels 10
splot exp(-0.2*x)*cos(x*y)*sin(y) notitle