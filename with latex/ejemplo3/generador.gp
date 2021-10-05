reset
set term tikz standalone size 11cm, 13cm
set output 'grafico.tex'
set xrange [-3:3]
set yrange [-1:1]
set label 1 at -1.5, 0.5 "$erf(x) = \\frac{2}{\\sqrt{\\pi}}\\int_0^x\\, e^{-t^2} dt$" centre
plot erf(x) lw 1.5 lc rgb 'blue'
unset output
system("pdflatex grafico")