function [o]=myEdgeDetector(Img,method,par1,par2)
  
  
  if(strcmp(method,'sobel')==1)
    o=mySobel(Img,par1,par2);    
  
  elseif(strcmp(method,'prewitt')==1)
   o=myPrewitt(Img,par1,par2);
  
  elseif(strcmp(method,'LoG')==1)
   o=myLoG(Img,par1,par2);
  
  elseif(strcmp(method,'Canny')==1)
    o=myCanny(Img,par1,par2);
	
  else
    disp('Parameters passed to function myEdgeDetector are not correct');
  endif
endfunction