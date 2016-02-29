set terminal svg size 1600,900
set output 'plot.svg'
set boxwidth 0.5
set style fill solid 1.0 border -1
set ylabel "Lines added/removed"
set xtics rotate
set bmargin 8
#plot 'access.per.day.dat' using 2:xticlabels(1) with boxes lt rgb "#000000"
plot 'access.per.month.dat' using 2:xticlabels(1) with boxes lt rgb "#000000"
