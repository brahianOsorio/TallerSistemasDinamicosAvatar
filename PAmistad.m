function probabilidadAmistades= PAmistad()
 
  
  pTotal= 0.2;
  consume= 1;
  noConsume=0;
  
  consumo = floor(rand(1)*2);
  
  if(consumo==consume)
    
    probabilidadAmistades= pTotal*(rand(1)*0.50);
    
  elseif(consumo==noConsume)
    
    probabilidadAmistades= pTotal*(-rand(1)*0.50);
  endif  
  
  
  endfunction