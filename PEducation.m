function probabilidadEducation= PEducation()
  
  
  pTotal= 0.2;
  consume= 1;
  noConsume=0;
  
  consumo = floor(rand(1)*2);
  school = floor(rand(1)*2);
  
  switch school 
    case {1} % Este caso representa el estudio en bachillerato  
        if(consumo==consume)
          probabilidadEducation= pTotal*( rand(1)*0.50);
        elseif(consumo==noConsume)
          probabilidadEducation= pTotal*( -rand(1)*0.50);
        endif
    case {0} % Este caso representa el estudio en Educacion Superior  
        if(consumo==consume)
          probabilidadEducation= pTotal*(rand(1)*0.50);
        elseif(consumo==noConsume)
          probabilidadEducation= pTotal*(-rand(1)*0.50);
        endif
  endswitch
  endfunction