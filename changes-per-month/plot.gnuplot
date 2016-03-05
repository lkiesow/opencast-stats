set terminal svg size 1600,900
set terminal svg size 1600,900 standalone fname 'Sans bold' fsize 20
set output 'plot.svg'
set boxwidth 0.8
set style fill solid 1.0 border -1
set ylabel "Lines added/removed"
set xtics rotate
set bmargin 8
plot 'changes.per.month.y' using 3:xticlabels(1) with boxes lt rgb "#000000" notitle, \
	'changes.per.month.y' using 4:xticlabels(1) with boxes lt rgb "#666666" notitle
