punto1="<echo 0 2"
punto2="<echo -3 3"
punto3="<echo -1 2.5"
punto4="<echo 0 3.5"
punto5="<echo 1 2.2"
punto6="<echo -1 1"

plot[-4:4][0:4.5] punto1 pt 6 ps 2 lc rgb 'red',\
                  punto2 pt 3 ps 2 lc rgb 'cyan',\
                  punto3 pt 4 ps 2 lc rgb 'green',\
                  punto4 pt 2 ps 2 lc rgb 'black',\
                  punto5 pt 22 ps 2 lc rgb 'yellow',\
                  punto6 pt 24 ps 2 lc rgb 'blue'
  