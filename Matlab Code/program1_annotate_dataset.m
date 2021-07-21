
%% This code assign label to images in the dataset
% Question: Write the code extract 24 bin RGB and HSV histogram
% refer to code in line 251 to 255

clc; clear all; close all;

working_path = './';
image_directory = ['.\','images\'] ; % relative to working path

cd(working_path);
addpath(pwd);
addpath(image_directory);

%% Explore the dataset
% Question 1 : How many images in the \images folder
% Answer : 1000 
cd(working_path);

cd('.\images')
fileList = dir('*.jpg'); % find all jpg files in the directory

% display some images
% display 2nd image
im = imread(fileList(2).name );
imshow(im);

cd(working_path);

%% Annotate the images according to categories
% Question: How many images for Africa group ?
% Ans: 100

% 0-99 assign to Africa label = 1
% 100 - 199 assign to Beach label = 2
% 200-299 assign to Building label = 3
% 300 - 399 assign to Bus label = 4
% 400 - 499 assign to Dinasour label = 5
% 500-599 assign to Elephant label = 6
% 600 - 699 assign to Flower label = 7
% 700 - 799 assign to Horse label = 8
% 800-899 assign to Mountain label = 9
% 900 - 999 assign to Food label = 10


%% img 0-99 assign to Africa label = 1
i=0;
for k=0:99 %length(fileList)
    
  baseFileName = sprintf('%d.jpg', k);
  fullFileName = [image_directory baseFileName] ;
  % Now do something with fullFileName
  im = imread(fullFileName);
  %imshow(im);
  
  i=i+1;
  % store in an array of structure 
  database(i).imageName = fullFileName; % read the file name
  database(i).label = 1;  % ground truth label 1 is africa
    
  fprintf('\n The image %s assigned to label = %d category = Africa', baseFileName, ...
      1);
      
end
figure(1) , im = imread( database(i).imageName  );
imshow(im);


%% img 100 - 199 assign to Beach label = 2
for k=100:199 %length(fileList)
    
  baseFileName = sprintf('%d.jpg', k);
  fullFileName = [image_directory baseFileName] ;
  % Now do something with fullFileName
  im = imread(fullFileName);
  %imshow(im);
  
  i=i+1;
  % store in an array of structure 
  database(i).imageName = fullFileName; % read the file name
  database(i).label = 2;  % ground truth label 1 is Beach
  
  fprintf('\n The image %s assigned to label = %d category = Beach', baseFileName, ...
      2);
      
end
figure(2), im = imread( database(i).imageName  ); imshow(im);

%% img 200-299 assign to Building label = 3
for k=200:299 %length(fileList)
    
  baseFileName = sprintf('%d.jpg', k);
  fullFileName = [image_directory baseFileName] ;
  % Now do something with fullFileName
  im = imread(fullFileName);
  %imshow(im);
  
  i=i+1;
  % store in an array of structure 
  database(i).imageName = fullFileName; % read the file name
  database(i).label = 3;  % ground truth label 1 is Beach
  
  fprintf('\n The image %s assigned to label = %d category = Building', baseFileName, ...
      3);
      
end
figure(3), im = imread( database(i).imageName  ); imshow(im);


%% img % 300 - 399 assign to Bus label = 4
for k=300:399 %length(fileList)
    
  baseFileName = sprintf('%d.jpg', k);
  fullFileName = [image_directory baseFileName] ;
  % Now do something with fullFileName
  im = imread(fullFileName);
  %imshow(im);
  
  i=i+1;
  % store in an array of structure 
  database(i).imageName = fullFileName; % read the file name
  database(i).label = 4;  % ground truth label 1 is Beach
  
  fprintf('\n The image %s assigned to label = %d category = Bus', baseFileName, ...
      4);
      
end
figure(4), im = imread( database(i).imageName  ); imshow(im);

%% img 400 - 499 assign to Dinasour label = 5

for k=400:499 %length(fileList)
    
  baseFileName = sprintf('%d.jpg', k);
  fullFileName = [image_directory baseFileName] ;
  % Now do something with fullFileName
  im = imread(fullFileName);
  %imshow(im);
  
  i=i+1;
  % store in an array of structure 
  database(i).imageName = fullFileName; % read the file name
  database(i).label = 5;  % ground truth label 1 is Beach
  
  fprintf('\n The image %s assigned to label = %d category = Dinasour', baseFileName, ...
      5);
      
end
figure(5), im = imread( database(i).imageName  ); imshow(im);

%% % 500-599.jpg assign to Elephant label = 6
for k=500:599 %length(fileList)
    
  baseFileName = sprintf('%d.jpg', k);
  fullFileName = [image_directory baseFileName] ;
  % Now do something with fullFileName
  im = imread(fullFileName);
  %imshow(im);
  
  i=i+1;
  % store in an array of structure 
  database(i).imageName = fullFileName; % read the file name
  database(i).label = 6;  % ground truth label 1 is Beach
  
  fprintf('\n The image %s assigned to label = %d category = Elephant', baseFileName, ...
      6);
      
end
figure(6), im = imread( database(i).imageName  ); imshow(im);

%% % 600-699.jpg assign to Flower label = 7
for k=600:699 %length(fileList)
    
  baseFileName = sprintf('%d.jpg', k);
  fullFileName = [image_directory baseFileName] ;
  % Now do something with fullFileName
  im = imread(fullFileName);
  %imshow(im);
  
  i=i+1;
  % store in an array of structure 
  database(i).imageName = fullFileName; % read the file name
  database(i).label = 7;  % ground truth label 1 is Beach
  
  fprintf('\n The image %s assigned to label = %d category = Flower', baseFileName, ...
      7);
      
end
figure(7), im = imread( database(i).imageName  ); imshow(im);

%% % 700-799.jpg assign to Horse label = 8
for k=700:799 %length(fileList)
    
  baseFileName = sprintf('%d.jpg', k);
  fullFileName = [image_directory baseFileName] ;
  % Now do something with fullFileName
  im = imread(fullFileName);
  %imshow(im);
  
  i=i+1;
  % store in an array of structure 
  database(i).imageName = fullFileName; % read the file name
  database(i).label = 8;  % ground truth label 1 is Beach
  
  fprintf('\n The image %s assigned to label = %d category = Horse', baseFileName, ...
      8);
      
end
figure(8), im = imread( database(i).imageName  ); imshow(im);

%% % 800-899.jpg assign to Mountain label = 9
for k=800:899 %length(fileList)
    
  baseFileName = sprintf('%d.jpg', k);
  fullFileName = [image_directory baseFileName] ;
  % Now do something with fullFileName
  im = imread(fullFileName);
  %imshow(im);
  
  i=i+1;
  % store in an array of structure 
  database(i).imageName = fullFileName; % read the file name
  database(i).label = 9;  % ground truth label 1 is Beach
  
  fprintf('\n The image %s assigned to label = %d category = Mountain', baseFileName, ...
      9);
      
end
figure(9), im = imread( database(i).imageName  ); imshow(im);

%% % 900-999.jpg assign to Food label = 10
for k=900:999 %length(fileList)
    
  baseFileName = sprintf('%d.jpg', k);
  fullFileName = [image_directory baseFileName] ;
  % Now do something with fullFileName
  im = imread(fullFileName);
  %imshow(im);
  
  i=i+1;
  % store in an array of structure 
  database(i).imageName = fullFileName; % read the file name
  database(i).label = 10;  % ground truth label 1 is Beach
  
  fprintf('\n The image %s assigned to label = %d category = Food', baseFileName, ...
      10);
      
end
figure(10), im = imread( database(i).imageName  ); imshow(im);

%%
% generate feature vector, student need to write code to extract feature
for i = 1: length(database)
    imFile = database(i).imageName ;
    database(i).featRGB = getColourHistRGB(imFile);
    database(i).featHSV = getColourHistHSV(imFile);
end

% save the variable dataBase
save('database_cbir.mat', 'database');























