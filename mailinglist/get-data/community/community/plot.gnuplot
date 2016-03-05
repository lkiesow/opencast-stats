set terminal svg size 1600,900
set terminal svg size 1600,900 standalone fname 'Sans bold' fsize 20
set boxwidth 0.8
set style fill solid 1.0 border -1
set xtics rotate
set bmargin 8

set output 'plot.by.month.svg'
set ylabel "Mails to community@opencast.org"
plot 'by.month.dat' using 1:xticlabels(2) with boxes lt rgb "#000000" notitle

set output 'plot.timezones.svg'
set ylabel "Timezones of mails to community@opencast.org"
plot 'timezones.dat' using ($2/100):1 with boxes lt rgb "#000000" notitle
