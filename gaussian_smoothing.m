function [o]=gaussian_smoothing(InputImg,Sigma,FilterSize)
	Filter=zeros(FilterSize,FilterSize);
	pad_size=(FilterSize-1)/2;
	mid_point=[ pad_size+1 pad_size+1];
	for i=1:FilterSize
		for j=1:FilterSize
			Filter(i,j)=(1/(2*pi*Sigma^2))*e^(-1*((i-mid_point(1))^2+(j-mid_point(2))^2 )^1/2/(2*Sigma^2));
		end
	end
	o=correlation2D(InputImg,Filter);
	o=uint8(o);	
end