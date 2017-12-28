function ret = hasLoop(array, startRow, startCol, endOfEdgeRow, endOfEdgeCol)
  ret = 0;
  for i = 1 : rows(array),
    for j = 1 : columns(array),
      if(array(i, j) > 0 && (i != startRow && j != startCol)),
        if(i == endOfEdgeRow && j == endOfEdgeCol),
          ret = 1;
          break;
        else,
          hasLoop(array, i, j, endOfEdgeRow, endOfEdgeCol);
        endif;
      endif;
    if(i == 1),
      break;
    endif;
  if(i == 1),
    break;
  endif;
endfunction
