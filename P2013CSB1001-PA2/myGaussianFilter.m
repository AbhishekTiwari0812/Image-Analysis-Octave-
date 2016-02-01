function [o]=myGaussianFilter(Sigma=1.4,x=2)
  format long;
  o=zeros(x,x);
  o=double(o);
  center=floor(x/2)+1;
  for i=1:x
    for j=1:x
      r=double((i-center)^2+(j-center)^2);
      r=r*(-1);
      o(i,j)=(e^(r/(2*(Sigma^2))))/(2*pi*Sigma^2);
    endfor
   endfor
   N=sum(sum(o));
   o=o/N;
endfunction