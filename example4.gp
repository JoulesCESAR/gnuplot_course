set title 'Graph of velocity vs time'
set xlabel 'Time [seg]'
set ylabel 'Velocity [ms^{-1}]'
set xrange[0:7] 
set mxtics 4
set grid
set arrow 1 from  1.9,-1.0 to 2.01,1.8
set label 1 "First max" at 1.8,-1.0 right 
plot x*sin(x) title "Velocity" lc rgb 'red'
