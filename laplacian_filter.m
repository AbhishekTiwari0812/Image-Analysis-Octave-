function [output]=laplacial_filter(input_image)
	filter=[0 1 0;1 -4 1;0 1 0];
	output=correlation2D(input_image,filter);
	output=uint8(output);
end