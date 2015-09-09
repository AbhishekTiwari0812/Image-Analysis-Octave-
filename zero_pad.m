function [o] =zero_pad(Input,pad_width)
	[r,c]=size(Input);
	o=zeros(r+pad_width*2,c+pad_width*2);
	o(pad_width+1:end-pad_width,pad_width+1:end-pad_width)=Input;
end