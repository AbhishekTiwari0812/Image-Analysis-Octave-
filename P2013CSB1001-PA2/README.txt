The test script runs on the image building.tif
this  can be changed by editing the file name in the TestPA2.m
There is some problem with reading other images(in Octave) provided with the assigment.(although code runs fine for building.tif)
The arguments to be passed can also be editted in TestPA2.m

For Canny edge detector, to make the edges thin, instead of using non-maximal suppression, I have used smoothing, and then chopping off the pixels which go below the threshold(implemented in myEdgeThinner). This method also gives equally good result.(code was giving some error when I was trying to use atan2)
For higher threshold values, Marr hilderth edge detector shows totally chaotic outputs.works well for threshold values around 10.
