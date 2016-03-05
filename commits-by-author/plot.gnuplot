set terminal svg size 1600,900
set terminal svg size 1600,900 standalone fname 'Sans bold' fsize 20
set output 'plot.svg'
set boxwidth 0.8
set style fill solid 1.0 border -1
set ylabel "Number of Commits"
set xtics rotate
set bmargin 8
plot 'commits-by-author.tsv' using 1:xtic(2) notitle with boxes lt rgb "#000000"
