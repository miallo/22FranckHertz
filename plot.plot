reset
set term epslatex color
set key top left
set output 'messwerte.tex'
set xlabel '$U \propto I_A$ [V]'
set ylabel '$U_1$ [V]'

p 'Daten.csv' u 1:2:(0.01+0.01*$2) w ye t'Messwerte' 
set output


set output 'geraden.tex'
set xlabel '$U \propto I_A$ [V]'
set ylabel '$U_1$ [V]'
f(x)=a*x+b
fit [:] f(x) 'Daten.csv' u 1:2
p 'Daten.csv' u 1:2:(0.01+0.01*$2) w ye t'Messwerte' 
set output
