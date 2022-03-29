function pruebas()

matriz = GPoblacion();
PintarMatriz(matriz);
pause
contador=0;

while (contador<30)
  
for i = 2 : 9
  for j=2:9
    CasoEspecial = floor(rand(1)*2);
    if (i==2 && j==2)
     
       auxEnI = matriz(i+1,j);
       auxEnJ = matriz(i,j+1);
       resultado= (auxEnI+auxEnJ)/2;
       matriz(i,j)= (resultado+matriz(i,j))/2;
       
       if (CasoEspecial ==0)
         matriz(i,j)=Rehabilitacion(matriz(i,j));
       elseif (CasoEspecial==1)
         matriz(i,j)=Recaida(matriz(i,j));
       endif
         
       
    elseif (i==2 && j==9)

       auxEnI = matriz(i+1,j);
       auxEnJ = matriz(i,j+1);
       resultado= (auxEnI+auxEnJ)/2;
       matriz(i,j)= (resultado+matriz(i,j))/2 ;
       
       if (CasoEspecial ==0)
         matriz(i,j)=Rehabilitacion(matriz(i,j));
       elseif (CasoEspecial==1)
         matriz(i,j)=Recaida(matriz(i,j));
       endif
    elseif (i==9 && j==9)
       
       auxEnI = matriz(i+1,j);
       auxEnJ = matriz(i,j+1);
       resultado= (auxEnI+auxEnJ)/2;
       matriz(i,j)= (resultado+matriz(i,j))/2;
       
       matriz(i,j)=Rehabilitacion(matriz(i,j));
    elseif (i==9 && j==2)
       
       auxEnI = matriz(i+1,j);
       auxEnJ = matriz(i,j+1);
       resultado= (auxEnI+auxEnJ)/2;
       matriz(i,j)= (resultado+matriz(i,j))/2;
       
       if (CasoEspecial ==0)
         matriz(i,j)=Rehabilitacion(matriz(i,j));
       elseif (CasoEspecial==1)
         matriz(i,j)=Recaida(matriz(i,j));
       endif
    else 
  
       auxEnI = matriz(i-1,j)+matriz(i+1,j);
       auxEnJ = matriz(i,j-1)+matriz(i,j+1);
       resultado= (auxEnI+auxEnJ)/4;
       matriz(i,j)= (resultado+matriz(i,j))/2;
       
       if (CasoEspecial ==0)
         matriz(i,j)=Rehabilitacion(matriz(i,j));
       elseif (CasoEspecial==1)
         matriz(i,j)=Recaida(matriz(i,j));
       endif
    endif
  endfor
 endfor
 contador+=1;

 disp(contador);
PintarMatriz(matriz);
 pause(2);
endwhile
endfunction