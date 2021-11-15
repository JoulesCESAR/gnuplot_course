#This is an simple example of parametric plot
reset
set parametric
set xrange [-110:110]
set yrange [-110:120]
set trange [0:300]
set samples 10000
plot -35*cos(t)+65*cos(-.35*t),-35*sin(t)-65*sin(-.35*t)


