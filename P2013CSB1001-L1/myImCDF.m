function c=myImCDF(inImg,nBins)
	values=myImPDF(inImg,nBins);
	current=0;	
	for i=1:512
		Current=Current+values(i);
		values(i)=Current;
	end
	NumOfPix=linspace(1,512,512);
	plot(values,NumOfPix);
	c=values(:);
end


