function porcentagePersona=Rehabilitacion(sugeto)
 
rehabilita = floor(rand(1)*2);

if (rehabilita == 0)
  if (sugeto > 0.65)
    sugeto = 0;
    else
    sugeto=0.25;
  endif
endif

porcentagePersona=sugeto;
  endfunction