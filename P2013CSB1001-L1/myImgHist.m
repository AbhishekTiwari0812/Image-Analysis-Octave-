function f= myImHist(inImg,nBins)
	a=size(inImg);
	for i=1:512		 %there are at max 1024 different intensities
			values(i)=0;
	end
	for i=1:a(1)
		for j=1:a(1)
			values(inImg(i,j))=values(inImg(i,j))+1;		%%check here for the errors
		end
	end
	NumOfPix=linspace(1,512,512);
	plot(values,NumOfPix);
	f=values(:);
end
