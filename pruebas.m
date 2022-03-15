function pruebas()

matriz = GPoblacion();
PintarMatriz(matriz);
pause
contador=0;
while (contador<5)
  
for i = 2 : 9
  for j=2:9
    if (i==2 && j==2)
       auxEnI = matriz(i+1,j);
       auxEnJ = matriz(i,j+1);
       resultado= (auxEnI+auxEnJ)/2;
       matriz(i,j)= ((resultado)+matriz(i,j))/resultado  ;
    elseif (i==2 && j==9)
       auxEnI = matriz(i+1,j);
       auxEnJ = matriz(i,j+1);
       resultado= (auxEnI+auxEnJ)/2;
       matriz(i,j)= ((resultado)+matriz(i,j))/resultado ;
    elseif (i==9 && j==9)
       auxEnI = matriz(i+1,j);
       auxEnJ = matriz(i,j+1);
       resultado= (auxEnI+auxEnJ)/2;
       matriz(i,j)= ((resultado)+matriz(i,j))/resultado;
    elseif (i==9 && j==2)
       auxEnI = matriz(i+1,j);
       auxEnJ = matriz(i,j+1);
       resultado= (auxEnI+auxEnJ)/2;
       matriz(i,j)= ((resultado)+matriz(i,j))/resultado;
    else 
       auxEnI = matriz(i-1,j)+matriz(i+1,j);
       auxEnJ = matriz(i,j-1)+matriz(i,j+1);
       resultado= (auxEnI+auxEnJ)/4;
       matriz(i,j)= ((resultado)+matriz(i,j))/resultado;
    endif
  endfor
 endfor
 contador+=1;

 disp(contador);
PintarMatriz(matriz);
 pause(1);
endwhile
endfunction