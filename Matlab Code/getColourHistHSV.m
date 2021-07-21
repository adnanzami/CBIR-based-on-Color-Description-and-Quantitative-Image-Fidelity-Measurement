function featVec = getColourHistHSV(imageFile)

im = imread('hand.jpg');
im = imresize(im,0.25);
im = double(im);
HSV=rgb2hsv(im);
 
% Your code
% Hint: implement doQuanMatrix function. Count the index

imH = HSV(:,:,1);
[H_i , imQ_H ] = doQuanMatrix( imH , 8 , 0, 1.01);
vecIm = double(imQ_H(:));
[H binc]=hist(vecIm,8);
Hist_H=H;

imS = HSV(:,:,2);
[S_i , imQ_S ] = doQuanMatrix( imS , 8 , 0, 255);
vecIm = double(imQ_S(:));
[H binc]=hist(vecIm,8);
Hist_S=H;

imV = HSV(:,:,3);
[V_i , imQ_V ] = doQuanMatrix( imV , 4 , 0, 255);
vecIm = double(imQ_V(:));
[H binc]=hist(vecIm,4);
Hist_V=H;




   % concatenate the histogram for red , green, blue plane
  featVec= [ Hist_H , Hist_S , Hist_V ];
   
   %normalize the histogram
   featVec = featVec ./ sum(featVec(:)) ;
    
end