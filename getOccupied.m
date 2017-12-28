function ret = getOccupied(M)
  ret = zeros(rows(M), columns(M));
  for i = 1 : rows(M),
    for j = 1 : columns(M),
      if M(i, j) > 0,
        ret(i, j) = 1;
      endif;
    end;
  end;
endfunction
