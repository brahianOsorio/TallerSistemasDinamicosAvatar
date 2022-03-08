function probabilidadFamilia= PFamilia()
  
  
  pTotal= 0.6;
  consume= 1;
  noConsume=0;
  
  consumo = floor(rand(1)*2);
  
  if(consumo==consume)
    
    probabilidadFamilia= pTotal * (rand(1)*0.45);
    
  elseif(consumo==noConsume)
    
    probabilidadFamilia= pTotal*(-rand(1)*0.55);
  endif  
  
  
endfunction