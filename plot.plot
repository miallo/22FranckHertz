reset
set term epslatex color
set key top left
set yrange [0:9]
set output 'messwerte.tex'
set xlabel '$U \propto I_A$ [V]'
set ylabel '$U_1$ [V]'

p 'Daten.csv' u 1:2:(0.01+0.01*$2) w ye t'Messwerte' 
set output


set output 'geraden.tex'
set xlabel '$U \propto I_A$ [V]'
set ylabel '$U_1$ [V]'
f(x)=a*x+b
fit [6:17.1] f(x) 'Daten.csv' u 1:2 via a,b

g(x)=c*x+d
fit [17.2:23] g(x) 'Daten.csv' u 1:2 via c,d
h(x)=e*x+f
fit [23:33.6] h(x) 'Daten.csv' u 1:2 via e,f
i(x)=g*x+h
fit [33.6:40] i(x) 'Daten.csv' u 1:2 via g,h
j(x)=i*x+j
fit [40:50.8] j(x) 'Daten.csv' u 1:2 via i,j
k(x)=k*x+l
fit [50.8:57] k(x) 'Daten.csv' u 1:2 via k,l
p 'Daten.csv' u 1:2:(0.01+0.01*$2) w ye t'Messwerte', f(x) notitle, g(x) notitle, h(x) notitle, i(x) notitle, j(x) notitle, k(x) notitle
set output
