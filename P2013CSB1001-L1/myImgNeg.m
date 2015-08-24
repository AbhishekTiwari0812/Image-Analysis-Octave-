function f=myImgNeg(inImg)
	a=size(inImg);		
	temp=inImg;
	for i=1:a(1)
		for j=1:a(2)	
			if(inImg(i,j)>128)
				temp(i,j)=128-(inImg(i,j)-128);			
			else
				temp(i,j)=128+(128-inImg(i,j));
			end		
		end			
	end
	imshow(temp);
end

