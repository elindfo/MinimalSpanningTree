function ret = getCurrentNumberOfEdges(M)
  counter = 0;
  for i = 1 : columns(M),
    for j = 1 : rows(M),
      if M(i, j) > 0,
        counter = counter + 1;
      end;
    end;
  end;
  ret = counter / 2;
endfunction
