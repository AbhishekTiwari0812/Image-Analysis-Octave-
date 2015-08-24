function [o]=myConv2D(I,f,opt_bound,opt_size)
  size1=size(I);
  size2=size(f);
  I=myPadArray(I,size1(1),size1(2),opt_bound);
  rev_f=zeros(size2);
  for i=1:size2(1)
    for j=1:size2(2)
      rev_f(i,j)=f(size2(1)-i+1,size2(2)-j+1);
    end
  end
  mPadx=(size2(1)-1)/2;
  mPady=(size2(2)-1)/2;
  mZero=zeros(size(I));
  for i=1+mPadx:size1(1)-mPadx    
    for j=1+mPady:size1(2)-mPady 
      sum=0;
      for l=-mPadx:mPadx:1
        for m=-mPady:mPady:1
          mZero(i+l,j+m)+=sum+rev_f(l+mPadx+1,m+mPady+1)*I(i,j);  
        end
       end
    end
   end
   if(opt_size=='full')
    o=mZero;
   elseif(opt_size=='same')
    o=mZero(2:end-1,2:end-1);
end