set terminal svg size 1600,900
set output 'plot.svg'
set boxwidth 0.5
set style fill solid 1.0 border -1
set ylabel "Lines added/removed"
set xtics rotate
set bmargin 8
plot 'changes.per.month' using 3:xticlabels(1) with boxes lt rgb "#000000", \
	'changes.per.month' using 4:xticlabels(1) with boxes lt rgb "#ffffff"
