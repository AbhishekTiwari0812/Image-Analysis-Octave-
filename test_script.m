#test script

A=imread('boobs.jpg');
#imshow(A);
#A=imread('mario.png');
#A=imread('rsz_boobs.jpg');
#A(:,:,1)
%{	#gaussian
	o=gaussian_smoothing(A(:,:,1),2,3);
	o=uint8(o);
	subplot(1,3,1);
	imshow(o);
	o=gaussian_smoothing(A(:,:,1),2,5);
	o=uint8(o);
	subplot(1,3,2);
	imshow(o);
	o=gaussian_smoothing(A(:,:,1),2,7);
	o=uint8(o);
	subplot(1,3,3);
	imshow(o);
%}

%{
	#median filter smoothing
	o=median_filter(A(:,:,1),3);
	o=uint8(o);
	subplot(1,3,1);
	imshow(o);
	o=median_filter(A(:,:,1),5);
	o=uint8(o);
	subplot(1,3,2);
	imshow(o);
	o=median_filter(A(:,:,1),7);
	o=uint8(o);
	subplot(1,3,3);
	imshow(o);
%}
#sobel_filtering(A(:,:,1));
average_filtering(A(:,:,1),3);
average_filtering(A(:,:,1),5);
average_filtering(A(:,:,1),7);