function [output]=correlation2D(input_mat,filter)
	[filter_r,filter_c]=size(filter);	#should be a odd sized square matrix
	offset=(filter_r-1)/2;
	[m,n]=size(input_mat);
	output=zeros(m,n);
	input_mat= zero_pad(input_mat,offset);
	for i=1:m
		for j=1:n
			output(i,j)=sum(sum(input_mat(i:i+2*offset,j:j+2*offset).*filter));
		end
	end
end