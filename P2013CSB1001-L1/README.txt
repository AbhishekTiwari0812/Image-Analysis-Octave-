[1.] The test script is missing.
[2.] The functions (which take nBins as parameter) don't use it!
[3.] All the methods ran "fine" while using interactive commmand line octave.So all the functions should work fine.
[4.]The function signatures are->>
f= myImHist(IMAGE_PATH,nBins);
c=myImCDF(IMAGE_PATH,nBins);
f=myImgLog(IMAGE_PATH);
c=myCDF(PDF_ARRAY );
f=myImgNeg(IMAGE_PATH);
f=myImgGamma(IMAGE_PATH,Gamma_value);
f=myImgPower(IMAGE_PATH,Power) 

