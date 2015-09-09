function [output]=average_filter(input_mat,size_of_filter)
	Filter=(1/size_of_filter)*ones(size_of_filter);
	output=uint8(correlation2D(input_mat,Filter));
	imshow(output);
end