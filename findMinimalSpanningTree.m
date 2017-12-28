function ret = findMinimalSpanningTree (M)
  
  numberOfVertices = columns(M);
  finalNumberOfEdges = numberOfVertices - 1;
  
  currentNumberOfEdges = getCurrentNumberOfEdges(M);
  
  disp(sprintf("Current number of edges: %d", currentNumberOfEdges));
  
  ret = 1;
  
endfunction
