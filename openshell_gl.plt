set term po enhanced color font "Helvetica,16"
set o 'openshell_gl.eps'
set xr[0.1:2]
set yr[-1.5:25]


set style line 1 lt 2 lw 4 lc  'black' dt 1
set style line 2 lt 6 lw 4 lc  'blue' dt 3
set style line 3 lt 4 lw 4 lc  'red' dt 6

unset title

### Start multiplot (2x2 layout)
set multiplot layout 2,2 rowsfirst
# --- GRAPH a
set xtics in 0,.5,2
unset key
set xlabel "{/Symbol \326}r (bohr^{1/2})"
set ylabel "g_{L}({/:bold r})"

set label 1 'Li' at graph 0.5,0.7 font ',16'
plot 'lithium_gr.txt' u 1:2 with lines ls 1 notitle ,\
   'lithium_gr.txt' u 1:4 with lines ls 2 notitle, \
   'lithium_gr.txt' u 1:5 with lines ls 3 notitle
# --- GRAPH b
set label 1 'Be' at graph 0.5,0.7 font ',16'
#plot 'beryllium_gr.txt' u 1:2 with lines ls 1
plot 'beryllium_gr.txt' u 1:2 with lines ls 1 notitle ,\
   'beryllium_gr.txt' u 1:4 with lines ls 2 notitle, \
   'beryllium_gr.txt' u 1:5 with lines ls 3 notitle
# --- GRAPH c
set label 1 'B' at graph 0.5,0.7 font ',16'
#plot 'boron_gr.txt' u 1:3 with lines ls 1
plot 'boron_gr.txt' u 1:2 with lines ls 1 notitle ,\
   'boron_gr.txt' u 1:4 with lines ls 2 notitle, \
   'boron_gr.txt' u 1:5 with lines ls 3 notitle
# --- GRAPH d
set label 1 'C' at graph 0.5,0.7 font ',16'
#plot 'carbon_gr.txt' u 1:3 with lines ls 1
plot 'carbon_gr.txt' u 1:2 with lines ls 1 notitle ,\
   'carbon_gr.txt' u 1:4 with lines ls 2 notitle, \
   'carbon_gr.txt' u 1:5 with lines ls 3 notitle
unset multiplot
### End multiplot
