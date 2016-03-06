set terminal svg size 1600,900 standalone fname 'Sans bold' fsize 20
set boxwidth 0.8
set style fill solid 1.0 border -1
set xtics rotate
set bmargin 8

set output 'pullrequests.per.month.svg'
set ylabel 'Number of Pull Requests'
plot 'pullrequests.by.month.dat' using 1:xticlabels(2) with boxes lt rgb "#000000" notitle

set output 'pullrequests.per.user.svg'
set ylabel 'Number of Pull Requests'
plot 'pullrequests.by.user.dat' using 1:xticlabels(2) with boxes lt rgb "#000000" notitle

set output 'reviews.by.user.svg'
set ylabel 'Number of Reviews'
plot 'reviews.by.user.dat' using 1:xticlabels(2) with boxes lt rgb "#000000" notitle
