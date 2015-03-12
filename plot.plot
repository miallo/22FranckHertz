reset
set term epslatex color
set key top left
set output 'messwerte.tex'

#j(x)=j*exp(k*x)+l
#j=827
#k=-0.017
#l=5
#set fit logfile 'log8min.log'
#fit j(x) '8min.dat' via j,k,l
p 'Daten.csv' t'Messwerte'#, j(x) t'Fit'
set output


