function porcentagePersona=Recaida(sugeto)
 
rehabilita = floor(rand(1)*2);

if (rehabilita == 0)
  if (sugeto > 0.55)
    sugeto = 0.95;
  endif
endif

porcentagePersona=sugeto;
  endfunction