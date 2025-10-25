#set terminal postscript eps enhanced color
#set output "ar_density_probrho_inset.eps"
set terminal pdfcairo enhanced color
set output "ar_density_probrho_inset_pdf.pdf"
set style line 1 lt 2 lw 8 lc rgb 'blue'   dt 4
set style line 2 lt 2 lw 8 lc rgb 'dark-red'    dt 1
set style line 3 lt 2 lw 5 lc rgb 'red'     dt 3
set style line 4 lt 2 lw 5 lc rgb 'orange'  dt 1
set style line 5 lt 2 lw 5 lc rgb 'magenta' dt 1

set multiplot

set size ratio 0.78
set origin 0, 0
set xlabel "{/Symbol=\\326}r (bohr^{(1/2)})" font ",21"
set ylabel "4{/Symbol p} r^{2} {/Symbol r}(r)" font ",19" textcolor rgb 'dark-red' rotate by 0
set y2label "{/Symbol r}(r)" font ",19" textcolor rgb 'blue' rotate by 0 offset 2,0
#set y2tics                      # enable right-side ticks
set ytics nomirror              # avoid duplication on left side
set xtics nomirror              # avoid duplication on left side
set xrange [0:2.5]
set yrange [0:27]

set arrow from 2.0,0 to 2.0,27 nohead lc rgb "dark-salmon" lw 4 dt 2
set arrow from 0.15,0 to 0.15,27 nohead lc rgb "black" lw 4 dt 2

plot 'electron_probar.txt' using 1:4 with lines ls 2 notitle, \
     'electron_probar.txt' using 1:2 with lines ls 1 notitle

unset key
unset xlabel
unset ylabel
unset y2label
unset xtics
unset ytics
unset xrange
unset yrange
unset arrow


#set xlabel "{/Symbol=\\326}r (bohr^{(1/2)})" font ",21"
#set ylabel "4{/Symbol p} r^{2} {/Symbol r}(r)" font ",19" textcolor rgb 'dark-red'
#set y2label "{/Symbol r}(r)" font ",19" textcolor rgb 'blue'
#set y2tics                      # enable right-side ticks
set origin 0.59,0.55    # position of inset (x, y)
set size 0.30,0.35    # width, height
#unset ytics
unset xtics
#set ytics nomirror              # avoid duplication on left side
#set xtics nomirror              # avoid duplication on left side
set xrange [1.5:2.5]
#set arrow from 2.0,0 to 2.0,27 nohead lc rgb "dark-salmon" lw 4 dt 2
plot 'electron_probar.txt' using 1:4 with lines ls 2 notitle, \
     'electron_probar.txt' using 1:2 with lines ls 1 notitle

unset multiplot
