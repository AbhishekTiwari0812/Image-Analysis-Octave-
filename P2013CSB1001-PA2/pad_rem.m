function [Img]=pad_rem(o,pad_width=1)
  [m,n]=size(o);
  Img=o(pad_width+1:end-pad_width,pad_width+1:end-pad_width);
  
endfunction