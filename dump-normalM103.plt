#set terminal png size 600, 600
#set output "dump-normalM103.png"
set datafile separator ","
set size square 1.0, 1.0
set title "Trial results for 'dump-normalM103'"
set xlabel "Worker Count" 0.0,0.0
set ylabel "Speedup" 0.0,0.0
set key left top box
set pointsize 1.8
plot [0:16] [0:16] x title "parallelism" lt 2, 13.695823 notitle lt 2, "dump-normalM103.csv" using 1:2 title "burdened speedup" with lines lt 1, "dump-normalM103.csv" using 1:4 with points pt 1 title "trials"
