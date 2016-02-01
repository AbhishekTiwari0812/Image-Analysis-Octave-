function [o]=pad(Img,pad_width=1,type=0)
  #img should be 2-dimensional
  [m,n]=size(Img);
  #if(type==0) #zero padding
  o=zeros(m+2*pad_width,n+2*pad_width);
  o(pad_width+1:end-pad_width,pad_width+1:end-pad_width)=Img;
  if(type==1) #copy lines 
    o(1:pad_width,pad_width+1:end-pad_width)=Img(1:pad_width,1:end);
    o(end-pad_width:end,pad_width+1:end-pad_width)=Img(end-pad_width:end,1:end);  
    o(pad_width+1:end-pad_width,1:pad_width)=Img(1:end,1:pad_width);
    o(pad_width+1:end-pad_width,end-pad_width:end)=Img(1:end,end-pad_width:end);      
  elseif(type==2) #repeat opposite side lines
    o(1:pad_width,pad_width+1:end-pad_width)=Img(end-pad_width+1:end,1:end);
    o(end-pad_width+1:end,pad_width+1:end-pad_width)= Img(1:pad_width,1:end);
    o(pad_width+1:end-pad_width,1:pad_width)=Img(1:end,end-pad_width+1:end);      
    o(pad_width+1:end-pad_width,end-pad_width+1:end)=Img(1:end,1:pad_width);
  #else #it's an error,gets padded with zeros
  endif
  
endfunction