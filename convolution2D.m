function [output]=convolution2D(input_mat,filter)
	
	filter(1:end,:)=filter(end:-1:1,:);
	filter(:,1:end)=filter(:,end:-1:1);
	[filter_r,filter_c]=size(filter);	#should be a odd sized square matrix
	offset=(filter_r-1)/2;
	[m,n]=size(input_mat);
	output=zeros(m,n);
	input_mat= zero_pad(input_mat,offset);
	input_mat
	for i=1:m
		for j=1:n
			sum(sum(input_mat(i:i+2*offset,j:j+2*offset).*filter))
			output(i,j)=sum(sum(input_mat(i:i+2*offset,j:j+2*offset).*filter));
		end
	end
end