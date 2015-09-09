function [output]=sobel_filtering(input_matrix)
	Gx=[-1 -2 -1;0 0 0;1 2 1];
	Gy=[-1 0 1;-2 0 2;-1 0 1];
	X=correlation2D(input_matrix,Gx);
	Y=correlation2D(input_matrix,Gy);

	output=(X.*X + Y.*Y);
	output=output.^(1/2);
	output=uint8(output);
	imshow(output);


end
