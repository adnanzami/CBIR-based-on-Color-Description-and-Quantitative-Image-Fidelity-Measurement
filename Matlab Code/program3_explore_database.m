
%% The purpose of this program is to explore the images in the database

clc; clear all; close all;

working_path = './';
image_directory = [working_path,'images\'] ;

cd(working_path);
addpath(pwd);
addpath(image_directory);

%% Examine the database by loading the mat file

load('database_cbir.mat','database');

disp('\n Note that the feature vector in this databse is just a random number');
disp('\n Student need to extract the feature vector using their own program before coming to the lab');

% Display the image in record 32 of database
im = imread(database(32).imageName);
imshow(im);

% Check the label
imFile = database(32).imageName ;
fprintf('\n the label = %d ', database(32).label);

% Check the feature vector
disp('\n Feature vector using RGB histogram \n');
disp( database(32).featRGB );

disp('\n\n Feature vector using HSV histogram \n');
disp( database(32).featHSV );









