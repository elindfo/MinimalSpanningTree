function ret = findMinimalSpanningTree (M)
  
  finalNumberOfEdges = columns(M) - 1;
  initialNumberOfEdges = getCurrentNumberOfEdges(M);
  
  #Get occupied positions in original graph
  occupied = getOccupied(M);
  
  
  
  
  ret = 1;
  
endfunction
