reset
set terminal tikz size 9cm, 7cm
set output 'graph.tex'

set xlabel '$\alpha\beta\gamma$'
plot 1/x, sin(x)  
set title '$\frac{1}{x}$'
set output 