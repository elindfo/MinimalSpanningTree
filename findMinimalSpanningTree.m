function ret = findMinimalSpanningTree (M)
  
  finalNumberOfEdges = columns(M) - 1;
  initialNumberOfEdges = getCurrentNumberOfEdges(M);
  
  #Get occupied positions in original graph
  occupied = getOccupied(M);
  
  #Create empty minimal spanning tree
  minimalSpanningTree = zeros(rows(M), columns(M));
  
  #Start picking the lowest edge
  while(getCurrentNumberOfEdges(minimalSpanningTree) < finalNumberOfEdges)
    minRowIndex = 0;
    minColIndex = 0;
    
    #Get first value
    minValue = -1;
    for i = 1 : rows(M),
      for j = 1 : columns(M),
        if(M(i, j) > 0),
          minValue = M(i, j);
          minRowIndex = i;
          minColIndex = j;
          break;
        endif;
      endfor;
      if(minValue > 0),
        break;
      endif;
    endfor;
    
    #Search for min value
    
    minValue
    minRowIndex
    minColIndex
    break;
  endwhile;
  
  ret = 1;
  
endfunction
