set multiplot;                          # get into multiplot mode
      set size 1,0.5;  
      set origin 0.0,0.5;   
      plot sin(x) lc rgb 'red' lw 2; 
      set label '(a)' at -9.5,3.2; 
      set label '(b)' at -9.5,0.8;
      set origin 0.0,0.0;   plot cos(x) lc rgb 'blue' lw 1.5
      unset multiplot                         # exit multiplot mode
