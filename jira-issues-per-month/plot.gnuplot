set terminal svg size 1600,900
set terminal svg size 1600,900 standalone fname 'Sans bold' fsize 20
set output 'plot.svg'
set boxwidth 0.8
set style fill solid 1.0 border -1
set ylabel "Issues created/resolved"
set xtics rotate
set bmargin 8
plot 'issues.per.month.y.dat' using 2:xticlabels(1) with boxes lt rgb "#000000" notitle, \
	'issues.per.month.y.dat' using (-$3):xticlabels(1) with boxes lt rgb "#666666" notitle
