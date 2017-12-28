function printEdgesPerVertice(M)
  for i = 1 : rows(M),
    disp(sprintf("Vertice %d\n-----------", i));
    for j = 1 : columns(M),
      if M(i, j) > 0,
        disp(sprintf("Con: V%d, Weight: %d", j, M(i, j)));
      endif;
    end;
    disp(sprintf("\n"));
  end;
endfunction
