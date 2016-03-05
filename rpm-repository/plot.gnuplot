set terminal svg size 1600,900
set terminal svg size 1600,900 standalone fname 'Sans bold' fsize 20
set output 'plot.svg'
set boxwidth 0.8
set style fill solid 1.0 border -1
set ylabel "Requests per month"
set xtics rotate
set bmargin 8
#plot 'access.per.day.dat' using 2:xticlabels(1) with boxes lt rgb "#000000"
plot 'access.per.month.dat' using 2:xticlabels(1) with boxes lt rgb "#000000" notitle
