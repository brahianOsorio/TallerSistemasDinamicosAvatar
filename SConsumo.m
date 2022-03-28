function SConsumo()

matriz = GPoblacion();
PintarMatriz(matriz);
pause();
contador=0;
while (contador<5)
  
for i = 2 : 9
  for j=2:9
    if (i==2 && j==2)
       auxEnI = matriz(i+1,j);
       auxEnJ = matriz(i,j+1);
       matriz(i,j)= (((auxEnI+auxEnJ)/2)+matriz(i,j))/2;
    elseif (i==2 && j==9)
       auxEnI = matriz(i+1,j);
       auxEnJ = matriz(i,j+1);
       matriz(i,j)= (((auxEnI+auxEnJ)/2)+matriz(i,j))/2;
    elseif (i==9 && j==9)
       auxEnI = matriz(i+1,j);
       auxEnJ = matriz(i,j+1);
       matriz(i,j)= (((auxEnI+auxEnJ)/2)+matriz(i,j))/2; 
    elseif (i==9 && j==2)
       auxEnI = matriz(i+1,j);
       auxEnJ = matriz(i,j+1);
       matriz(i,j)= (((auxEnI+auxEnJ)/2)+matriz(i,j))/2;
   
    else 
       auxEnI = matriz(i-1,j)+matriz(i+1,j);
       auxEnJ = matriz(i,j-1)+matriz(i,j+1);
       matriz(i,j)= (((auxEnJ+auxEnI)/4)+matriz(i,j))/2;
    endif
  endfor
 endfor
 contador+=1;
 disp(contador);
PintarMatriz(matriz);
pause (0.0005);
endwhile
  endfunction