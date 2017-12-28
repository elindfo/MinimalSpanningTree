function ret = hasLoop(array, row, startCol, endOfEdgeRow, endOfEdgeCol)
  ret = 0;

  for j = 1 : columns(array),
    if(array(row, j) > 0 && j != startCol),
      if(row == endOfEdgeRow && j == endOfEdgeCol),
        ret = 1;
        break;
      else,
        ret = hasLoop(array, j, row, endOfEdgeRow, endOfEdgeCol);
      endif;
    endif;
  endfor;
endfunction
