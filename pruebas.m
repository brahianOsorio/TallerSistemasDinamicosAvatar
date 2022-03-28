function pruebas()

matriz = GPoblacion();
PintarMatriz(matriz);
pause
contador=0;

while (contador<100)
  
for i = 2 : 9
  for j=2:9
    if (i==2 && j==2)
     
       auxEnI = matriz(i+1,j);
       auxEnJ = matriz(i,j+1);
       resultado= (auxEnI+auxEnJ)/2;
       matriz(i,j)= (resultado+matriz(i,j))/2  ;
       
       matriz(i,j)=Rehabilitacion(matriz(i,j));  
       
    elseif (i==2 && j==9)

       auxEnI = matriz(i+1,j);
       auxEnJ = matriz(i,j+1);
       resultado= (auxEnI+auxEnJ)/2;
       matriz(i,j)= (resultado+matriz(i,j))/2 ;
       
       matriz(i,j)=Rehabilitacion(matriz(i,j));
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
       
       matriz(i,j)=Rehabilitacion(matriz(i,j));
    else 
  
       auxEnI = matriz(i-1,j)+matriz(i+1,j);
       auxEnJ = matriz(i,j-1)+matriz(i,j+1);
       resultado= (auxEnI+auxEnJ)/4;
       matriz(i,j)= (resultado+matriz(i,j))/2;
       
       matriz(i,j)=Rehabilitacion(matriz(i,j));
    endif
  endfor
 endfor
 contador+=1;

 disp(contador);
PintarMatriz(matriz);
 pause(0.005);
endwhile
endfunction