function ret = findMinimalSpanningTree (M)
  
  finalNumberOfEdges = columns(M) - 1;
  initialNumberOfEdges = getCurrentNumberOfEdges(M);
  
  #Get occupied positions in original graph
  occupied = getOccupied(M);
  
  #Create empty minimal spanning tree
  minimalSpanningTree = zeros(rows(M), columns(M));
  
  #Start picking the lowest edge
  whileLoops = 8;
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
    startRow = minRowIndex;
    startCol = minColIndex;
    for i = startRow : rows(M),
      for j = startCol : columns(M),
        if((M(i, j) < minValue) && (occupied(i, j) != 0)),
          minValue = M(i, j);
          minRowIndex = i;
          minColIndex = j;
        endif;
      endfor;
    endfor;
    
    #Set min value position to 0 in occupied array for each end of the edge.
    occupied(minRowIndex, minColIndex) = 0;
    occupied(minColIndex, minRowIndex) = 0;
    
    #Make sure the edge is not creating a loop.
    #If one end of the edge can reach the other end, without going through the same edge,
    #a loop has been created. If that is the case, skip the edge.
    minRowIndex
    minColIndex
    minValue
    foundLoop = hasLoop(minimalSpanningTree, minColIndex, minRowIndex, minRowIndex)
    if(foundLoop != 1),
      minimalSpanningTree(minRowIndex, minColIndex) = minValue;
      minimalSpanningTree(minColIndex, minRowIndex) = minValue;
    endif;
  endwhile;
  
  ret = minimalSpanningTree;
endfunction
