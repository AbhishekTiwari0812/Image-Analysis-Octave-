function [o]=myLoG(Img,Sigma=1.4,Threshold=10)
    filter_size=5;
    [m,n]=size(Img);
    
    gaussian_filter=myGaussianFilter(Sigma,filter_size);
    laplacian=2*[0 -1 0;-1 4 -1;0 -1 0];  
    o=pad(Img,floor(filter_size/2),1);
    %% gaussian smoothing
    
    o=myCorr(o,gaussian_filter,0);
    o=pad(Img,floor(filter_size/2),1);
    
    %% laplacian
    o=myCorr(o,laplacian,1);    
    o_new=zeros(m,n);
    %% zero crossing
    for i=2:m
     for j=2:n
       if(o(i,j)*o(i-1,j-1)<0 )
          o_new(i,j)=255;
          o_new(i-1,j-1)=255;
       endif
       if(o(i,j)*o(i-1,j)<0 )
          o_new(i-1,j)=255;
       endif
       if(o(i,j)*o(i,j-1)<0 )
          o_new(i,j-1)=255;
       endif
      endfor
    endfor
    
    %%thresholding the image
    o=myThresholder(o,Threshold);
    o=uint8(o);
endfunction