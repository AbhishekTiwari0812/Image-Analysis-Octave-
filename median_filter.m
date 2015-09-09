function [outout]=median_filter(InputImage,offset)
	[m,n]=size(InputImage);
	outout=zeros(m,n);
	InputImage=zero_pad(InputImage,offset);
	for i=1:m
		for j=1:n
			temp=InputImage(i+offset:i+1+2*offset,j+offset:j+1+2*offset);
			temp=temp(:);
			temp=sort(temp);
			outout(i,j)=temp((offset*offset-1)/2+1);
		end
	end
	outout=uint8(outout);	
end
