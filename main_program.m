clear all;
close all;

%loading of workspace having already trained neural network (net)
load('trained.mat');

%NOTE: enter the character test image having bold edges, bacause when thin edges
% character image entered their connected components will be breaked after
% rendering function and cannot be selected for ploting the bounding box 

%calling of the gui for selecting the image
extractor;
