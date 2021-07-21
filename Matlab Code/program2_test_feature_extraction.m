
%% Program to test the feature extraction to get RGB and HSV colour histogram


clc; clear all; close all;

working_path = './';
image_directory = [working_path,'images\'] ;

cd(working_path);
addpath(pwd);
addpath(image_directory);

%% Examine the database by loading the mat file

load('database_cbir.mat','database');

%% Question 3: Display 2 image under the Food category 

figure(1), im = imread(database(950).imageName); imshow(im);
figure(2), im = imread(database(951).imageName); imshow(im);


%% Question 4: Write the code to count the number of images under the Food category 
n=0;
for i = 1: length(database)
    if database(i).label ==10
        n=n+1
    end
end

%% Question 5
% Write a function to compute colour histogram of a given image

imageFile = 'hand.jpg';
im = imread(imageFile);
tic
featVecHSV = getColourHistHSV(imageFile);
toc
tic
featVecRGB = getColourHistRGB(imageFile)
toc

