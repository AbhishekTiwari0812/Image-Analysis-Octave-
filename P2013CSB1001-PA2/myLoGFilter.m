function [o]=myLoGFilter(Sigma,size)
  %% if one wants to use direct LoG transformation
  %% instead of using Gaussian smoothing then Laplacian
  o=zeros(size,size);
  o=double(o);
  center=floor(size/2)+1;
  Sigma2=double(Sigma^2);
  for i=1:size
    for j=1:size
      r=(i-center)^2+(j-center)^2;
      o(i,j)=-((1-r/(2*Sigma2))*e^(-1*r/(2*Sigma2)))/(pi*Sigma2^2);
    endfor
  endfor
endfunction