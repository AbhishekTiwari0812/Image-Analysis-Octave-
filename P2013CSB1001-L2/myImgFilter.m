function [o]=myImgFilter(I,f,opt_mode,opt_bound,opt_size)
  
  if(opt_mode=='corr')
    mImg=myCorr2D(I,f,opt_bound,opt_size);  
  elseif(opt_mode=='conv')
    mImg=myConv(I,f,opt_bound,opt_size);
  end
end