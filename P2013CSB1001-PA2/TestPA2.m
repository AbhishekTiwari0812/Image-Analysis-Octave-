A=imread('building.tif');
[m,n]=size(A);
#A=A(floor(m/3):floor(2*m/3),floor(n/3):floor(2*n/3));
subplot(2,3,1);
imshow(A);
title('Original Image');
%%%%%%%%%%%%%%%%%%%%  SOBEL  %%%%%%%%%%
Threshold=20;
dir='both';
o=myEdgeDetector(A,'sobel',Threshold,dir);
subplot(2,3,2);
imshow(o);
title('Sobel Edge Detection');  
%%%%%%%%%%%%%%%%%   PREWITT   %%%%%%%%%%%%%%%%
Threshold=20;
dir='both';
o=myEdgeDetector(A,'prewitt',Threshold,dir);
subplot(2,3,3);
imshow(o);
title('Prewitt Edge Detection');
%%%%%%%%%%%%%%%%%%%%   MARR-HILDRETH  %%%%%%%%%%%%%%%%%%%
Threshold=12;
Sigma=1.4;
o=myEdgeDetector(A,'LoG',Sigma,Threshold);
subplot(2,3,5);
imshow(o);
title('Marr-Hildreth Edge Detection');
%%%%%%%%%%%%%%%%%%%%%  CANNY %%%%%%%%%%%%%%%%
Threshold=[40 20];
Sigma=1.4;
o=myEdgeDetector(A,'Canny',Sigma,Threshold);
subplot(2,3,6);
imshow(o);
title('Canny Edge Detection');