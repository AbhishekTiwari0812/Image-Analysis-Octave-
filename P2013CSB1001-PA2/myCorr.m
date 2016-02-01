function [o]=myCorr(Img,Filter,type=0)
  %%image should already be padded
  [m,n]=size(Img);
  [p,q]=size(Filter);
  start_x=floor(p/2)+1;
  start_y=floor(q/2)+1;
  end_x=m-floor(p/2);
  end_y=n-floor(q/2);
  o=Img;  
  if(type==0)
    for i=start_x:end_x
      for j=start_y:end_y
        o(i,j)=(Img(i-floor(p/2):i+floor(p/2),j-floor(q/2):j+floor(q/2)).*Filter)(start_x,start_y);
        endfor
    endfor   
  elseif(type==1)
    for i=start_x:end_x
      for j=start_y:end_y
        o(i,j)=sum(sum((Img(i-floor(p/2):i+floor(p/2),j-floor(q/2):j+floor(q/2)).*Filter)));
       endfor
    endfor
  endif
  %% to strip off the side padding
  
  o=pad_rem(o,floor(p/2));
endfunction