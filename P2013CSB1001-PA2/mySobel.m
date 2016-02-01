function [o]=mySobel(Img,threshold=100,dir='both')
  Img=double(Img);
  [m,n]=size(Img);
  
  %% applying Sobel operator
  for i=1:m-2
    for j=1:n-2
      Gx(i,j)=(2*Img(i+2,j+1)+Img(i+2,j)+Img(i+2,j+2))-(2*Img(i,j+1)+Img(i,j)+Img(i,j+2));
      Gy(i,j)=(2*Img(i+1,j+2)+Img(i,j+2)+Img(i+2,j+2))-(2*Img(i+1,j)+Img(i,j)+Img(i+2,j));
      o(i,j)=abs(Gx(i,j))+abs(Gy(i,j));
    endfor
  endfor
  %{
  subplot(2,1,1)
  imshow(uint8(Gx));
  subplot(2,1,2);
  imshow(uint8(Gy));
  %}  
  #check for the direction
  if(strcmp(dir,'horizontal')==1)
    o=abs(Gx);
  elseif(strcmp(dir,'vertical')==1)
    o=abs(Gy);
  endif
  o=myThresholder(o,threshold);  
  o=uint8(o);
  endfunction 