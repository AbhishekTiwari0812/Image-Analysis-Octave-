function [o]=myCanny(Img,Sigma=1.4,Threshold=[10 10])
  Img=double(Img);
  [m,n]=size(Img);
  #gaussian smoothing
  filter_size=7;
  Tl=Threshold(1);
  Th=Threshold(2);
  gaussian_filter=myGaussianFilter(Sigma,filter_size);
  o=pad(Img,2,1);
  o=myCorr(o,gaussian_filter,0);
  #to highlight regions of the image with high first spatial derivative
  #Sobel's filter
  
  for i=1:m-2
    for j=1:n-2
      Gx(i,j)=(2*Img(i+2,j+1)+Img(i+2,j)+Img(i+2,j+2))-(2*Img(i,j+1)+Img(i,j)+Img(i,j+2));
      Gy(i,j)=(2*Img(i+1,j+2)+Img(i,j+2)+Img(i+2,j+2))-(2*Img(i+1,j)+Img(i,j)+Img(i+2,j));
      o(i,j)=abs(Gx(i,j))+abs(Gy(i,j));
    endfor
  endfor
  
  
  #now double thresholding the image to highlight the thicker(actual) edges more.
  o1=myThresholder(o,Tl);  
  o2=myThresholder(o,Th);
  o=double(o1+o2)/2;
  
  
  
  o=uint8(o);  
  
  #imshow(uint8(o));
  
  endfunction