%%
format long;
my_img1=imread("lena512.bmp");
filter1=[1 1 1;1 1 1;1 1 1]*(1/9);
smooth1=myImgFilter(my_img1,box_filter,'corr','pad','full');
imshow(smooth1);
filter1=[1 2 3 2 1;2 4  5 4 2; 3  5 6 4 
smooth1=myImgFilter(my_img1,box_filter,'corr','pad','full');
imshow(smooth1);
