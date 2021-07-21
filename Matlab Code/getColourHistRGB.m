function featVec = getColourHistRGB(imageFile)
 
im = imread(imageFile);
im = imresize(im,0.25);
im = double(im);
 
% Your code
% Hint: implement doQuanMatrix function. Count the index

imR = im(:,:,1);
[R_i , imQ_R ] = doQuanMatrix( imR , 8 , 0, 255);
vecIm = double(imQ_R(:));
[H binc]=hist(vecIm,8);
Hist_Red=H;

imG = im(:,:,2);
[G_i , imQ_G ] = doQuanMatrix( imG , 8 , 0, 255);
vecIm = double(imQ_G(:));
[H binc]=hist(vecIm,8);
Hist_Green=H;

imB = im(:,:,3);
[B_i , imQ_B ] = doQuanMatrix( imB , 4 , 0, 255);
vecIm = double(imQ_B(:));
[H binc]=hist(vecIm,4);
Hist_Blue=H;


   % concatenate the histogram for red , green, blue plane
   featVec= [ Hist_Red , Hist_Green , Hist_Blue ];
   
   %normalize the histogram
   featVec = featVec ./ sum(featVec(:)) ;
    
end
