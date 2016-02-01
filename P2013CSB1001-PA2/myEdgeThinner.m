function [o]=myEdgeThinner(Img)
  [m,n]=size(Img);
  m=[1 1 1 1 1 1 1;1 1 1 1 1 1 1;1 1 1 1 1 1 1;1 1 1 1 1 1 1;1 1 1 1 1 1 1;1 1 1 1 1 1 1;1 1 1 1 1 1 1];
  m=double(m);
  m=m/49.0;
  o=pad(Img,3,1);
  o=myCorr(o,m);
  o=myThresholder(o,95);
  o=myEdgeThinner(o);
endfunction