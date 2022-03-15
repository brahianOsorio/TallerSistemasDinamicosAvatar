function PintarMatriz(Matriz)
  
    colores(:,:,1)=rand(10,10);%capa roja
    colores(:,:,2)=rand(10,10);%capa verde
    colores(:,:,3)=rand(10,10);%capa naranja
 
 
    rgb{1}=[255,0,0];%Red
    rgb{2}=[0,255,0];%Green
    rgb{3}=[255,200,0];%Orange
    rgb{4}=[0,0,0];
 for num= 1 : 10
   colores(1,num,:)=rgb{4};
   colores(10,num,:)=rgb{4};
   colores(num,1,:)=rgb{4};
   colores(num,10,:)=rgb{4};
 endfor
 for i=2:9
   for j=2:9
      if (Matriz(i,j)>-1 && Matriz(i,j)<0.25)
      colores(i,j,:)=rgb{2};          
    elseif(Matriz(i,i)>=0.25 && Matriz(i,j)<0.65)
      colores(i,j,:)=rgb{3};
    else
      colores(i,j,:)=rgb{1};
      endif
   endfor
 endfor
    imshow(colores);
  endfunction