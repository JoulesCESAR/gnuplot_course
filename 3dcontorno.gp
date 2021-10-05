set xrange[-3:4] 
set yrange[1:5]
set isosamples 30
set hidden3d
set key outside
set contour both
splot exp(-0.2*x)*cos(x*y)*sin(y) notitle