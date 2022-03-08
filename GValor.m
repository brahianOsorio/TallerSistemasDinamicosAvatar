function GenerarValorInicial= GValor()
  familia = PFamilia();
  amigos = PAmistad();
  educacion = PEducation();
  
  GenerarValorInicial = familia+amigos+educacion ;
  endfunction