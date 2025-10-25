set term po enhanced color font "Helvetica,16"
set o 'closedshell_gr.eps'
set xr[0:2]
set yr[-1:4]
set size ratio 0.5

set style line 1 lt 2 lw 4 lc  'black' dt 1
set style line 2 lt 2 lw 4 lc  'blue' dt 1
set style line 3 lt 2 lw 4 lc  'red' dt 1

unset title

### Start multiplot (2x1 layout)
set multiplot layout 2,1 rowsfirst
# --- GRAPH a
set xtics in 0,0.5,2
unset key
set xlabel "{/Symbol \326}r (bohr^{1/2})"
set ylabel "g({/:bold r})"

set label 1 'Ne' at graph 0.5,0.7 font ',16'
plot 'neon_gr.txt' u 1:2 with lines ls 1 notitle ,\
   'neon_gr.txt' u 1:3 with lines ls 2 notitle, \
   'neon_gr.txt' u 1:8 with lines ls 3 notitle
# --- GRAPH b
set label 1 'Ar' at graph 0.5,0.7 font ',16'
#plot 'argon_gr.txt' u 1:3 with lines ls 1
plot 'argon_gr.txt' u 1:2 with lines ls 1 notitle ,\
   'argon_gr.txt' u 1:3 with lines ls 2 notitle, \
   'argon_gr.txt' u 1:9 with lines ls 3 notitle

unset multiplot
### End multiplot
