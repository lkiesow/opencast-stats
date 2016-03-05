#set terminal svg size 1600,900
set terminal svg size 1600,900 standalone fname 'Sans bold' fsize 20
set boxwidth 0.8
set style fill solid 1.0 border -1
set xtics rotate
#set bmargin 8
#set xtics font "Sans,14"

set ylabel "Lines of Code: Java"
set output 'plot.java.svg'
plot 'java-loc-by-month.y.dat' using 5:xticlabels(1) with boxes lt rgb "#000000" notitle

set ylabel "Lines of Code: JavaScript"
set output 'plot.javascript.svg'
plot 'javascript-loc-by-month.y.dat' using 5:xticlabels(1) with boxes lt rgb "#000000" notitle

set boxwidth 2
set style data histograms
set ylabel "Lines of Code"
set output 'plot.svg'
plot 'java-loc-by-month.y.dat' using 5:xticlabels(1) lt rgb "#000000" title 'Java', \
	'javascript-loc-by-month.y.dat' using 5:xticlabels(1) lt rgb "#666666" title 'JavaScript'

set boxwidth 0.8
set style data histograms
set style histogram rowstacked
set ylabel "Lines of Code"
set output 'plot.stacked.svg'
plot 'java-loc-by-month.y.dat' using 5:xticlabels(1) lt rgb "#000000" title 'Java', \
	'javascript-loc-by-month.y.dat' using 5:xticlabels(1) lt rgb "#666666" title 'JavaScript'
