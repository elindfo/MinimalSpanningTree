function ret = getCurrentNumberOfEdges(M)
  counter = 0;
  for i = 1 : rows(M),
    for j = 1 : columns(M),
      if M(i, j) > 0,
        counter = counter + 1;
      endif;
    end;
  end;
  ret = counter / 2;
endfunction
