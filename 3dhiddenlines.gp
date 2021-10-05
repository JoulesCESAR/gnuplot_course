set xrange[-3:7] 
set yrange[1:5]
set isosamples 30
set hidden3d
splot exp(-0.2*x)*cos(x*y)*sin(y)