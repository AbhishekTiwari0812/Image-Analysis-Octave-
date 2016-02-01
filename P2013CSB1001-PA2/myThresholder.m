function [o]=myThresholder(Img,threshold=10)
  o=double(Img);
  threshold=double(max(max(Img)))*double(threshold)/100.0;
  #changes all the pixels less than threshold to zero
  o=floor(o/threshold);
  #change all the intensities to value=255;
  Max=max(max(o));
  o=o/Max;
  o=ceil(o);
  o=255*o;
endfunction