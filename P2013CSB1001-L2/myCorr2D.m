function [o]=myCorr2D(I,f,opt_bound,opt_size)
  size1=size(I);
  size2=size(f);
  I=myPadArray(I,size1(1),size1(2),opt_bound)
  size1=size(I);
  mPadx=(size2(1)-1)/2;
  mPady=(size2(2)-1)/2;
  mZero=zeros(size(I));
  for i=1+mPadx:size1(1)-mPadx    
    for j=1+mPady:size1(2)-mPady 
      sum=0;
      for l=-mPadx:mPadx:1
        for m=-mPady:mPady:1
          mZero(i+l,j+m)+=sum+f(l+mPadx+1,m+mPady+1)*I(i,j);
        end
       end
    end
   end
   if(opt_size=='full')
    o=mZero;
   elseif(opt_size=='same')
    o=mZero(2:end-1,2:end-1);
   
end 
