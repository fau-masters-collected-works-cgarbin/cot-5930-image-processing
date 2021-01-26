%% Load and show the list of images
% This continues from question 1
% Run question 1's .m file first to create the data file used here
load('image_data.mat')
arrayfun(@(x) disp(x.name + ', ' + x.width + ', ' + x.height), image_data)

%% Extract file names and display images on a grid
files = {image_data.name};
montage(files, 'Size', [2 2])
