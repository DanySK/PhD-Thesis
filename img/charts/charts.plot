set terminal pdfcairo

set xlabel "Year"
set ylabel "Bandwidth (Mb/s)"

set output 'mobile-data-performance.pdf'
set xrange[1980:2016]
set yrange[0.0008:180]
unset key
set logscale y
plot 'mobile.csv' using 1:2 notitle ps 1 lc "black" pt 7, 'mobile.csv' using ($1+0.5):($2*0.9):3 with labels left lc "black"

