function start = Start() 
  clc
  familia = PFamilia()
  amigos = PAmistad()
  edu = PEducation()
  
  probabilityIndividual = familia+amigos+edu ;
  
  disp ( 'La Probabilidad Del Individuo Es: ') 
  disp ( probabilityIndividual )
  
 endfunction