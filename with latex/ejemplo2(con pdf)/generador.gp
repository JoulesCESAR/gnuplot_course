reset
set term tikz standalone size 5cm, 7cm
set output 'grafico.tex'
set xtics ('$\frac{-\pi}{2}$' -pi/2, 0, '$\frac{\pi}{2}$' pi/2)
set xrange [-pi/2:pi/2]; set yrange [-2:2];
set ylabel '$ f(x)$'; set xlabel '$\theta$';
plot sin(x)
unset output
system("pdflatex grafico")