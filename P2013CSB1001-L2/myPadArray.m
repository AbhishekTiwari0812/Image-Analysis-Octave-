function [o]= myPadArray(I,r,c,opt_bound)
  temp=zeros(r+2,c+2);
  if(opt_bound=='pad')
    temp(2:end-1,2:end-1)=I;  
  elseif(opt_bound=='rep')
    temp(2:end-1,2:end-1)=I;
    temp(1,2:end-1)=I(1,:); %%first row
    temp(end,2:end-1)=I(end,:); %%Last row
    temp(2:end-1,1)=I(:,1)  %%first column
    temp(2:end-1,end)=I(:,end); %%last column
  elseif(opt_bound=='cir')
    temp(2:end-1,2:end-1)=I;
    temp(1,2:end-1)=I(end,:); %%first row
    temp(end,2:end-1)=I(1,:); %%Last row
    temp(2:end-1,1)=I(:,end)  %%first column
    temp(2:end-1,end)=I(:,1); %%last column
   end
   o=temp;
end