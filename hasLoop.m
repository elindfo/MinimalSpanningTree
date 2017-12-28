function ret = hasLoop(array, row, startCol, endOfEdgeRow)
  ret = 0;
  for j = 1 : columns(array),
    if(array(row, j) > 0 && j != startCol),
      if(row == endOfEdgeRow),
        ret = 1;
      else,
        ret = hasLoop(array, j, row, endOfEdgeRow);
      endif;
    endif;
    if(ret ==1),
      break;
    endif;
  endfor;
endfunction
