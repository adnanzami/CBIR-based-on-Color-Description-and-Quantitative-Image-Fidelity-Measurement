# Investigation on CBIR based on Color Description and Quantitative Image Fidelity Measurement

The aim of this paper is to investigate the feasibility of content based image retrieval (CBIR) by using 4 approaches. The first two approaches are histogram based: RGB (Red, Green, Blue) and HSV (Hue, Saturation, Value). The second two approaches are quantitative image fidelity measurement based: MSE (Mean Square Error) and SSIM (Structural Similarity Index). Quantitative image fidelity based measurement provides a certain amount similarity between two images.  Lastly the precision rate for each image retrieval has been measured.

## Installation

The programs in this repo were run on Matlab and all the analysis was done using Matlab too. Import all the files from MATLAB Code where you will find the programs and the database.

## Usage
There are 5 programs in this repo which does the following -

Program 0 - The purpose of this program is to explore the images in the database.

Program 1 - This code assign label to images in the dataset.

Program 2 - Program to extract RGB and HSV color histogram.

Program 4 - The purpose of this program is assign feature vector to each record

Program 5 -This program performs image retrieval from the created database



## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.



## License
[MIT](https://choosealicense.com/licenses/mit/)
