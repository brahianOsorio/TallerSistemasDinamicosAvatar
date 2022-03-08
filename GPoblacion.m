function GenerarPoblacion=GPoblacion()
  
 poblacion=zeros(10,10);

 filas=10;
 columnas=10;
 colores(:,:,1)=rand(10,10);%capa roja
 colores(:,:,2)=rand(10,10);%capa verde
 colores(:,:,3)=rand(10,10);%capa naranja
 
 
 rgb{1}=[255,0,0];%Red
 rgb{2}=[0,255,0];%Green
 rgb{3}=[255,200,0];%Orange
 
 
 for i=1:filas
   for j=1:columnas
      poblacion(i,j)=GValor;
      if (poblacion(i,j)>-1 && poblacion(i,j)<0.25)
      colores(i,j,:)=rgb{2};          
    elseif(poblacion(i,i)>=0.25 && poblacion(i,j)<0.65)
      colores(i,j,:)=rgb{3};
    else
      colores(i,j,:)=rgb{1};
      endif
   endfor
 endfor
 imshow(colores);
 GenerarPoblacion=poblacion;
 
endfunction