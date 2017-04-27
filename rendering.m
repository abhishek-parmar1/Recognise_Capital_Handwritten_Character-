function []= rendering(I)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here


image=imread(I);


% NaN to maintain the image aspect ratio of the original image
image=imresize(image,[400 NaN]);
figure; imshow(image);title('figure1');

%to convert rgb image to grey
image = rgb2gray(image);
figure; imshow(image);title('figure2');

%for salt and peper noise filteration
image = medfilt2(image,[3 3]);
figure; imshow(image);title('figure3');

% creates a disk-shaped structuring element, where 1 is the radius.
%which is an essential part of morphological dilation and erosion operations. 
a = strel('disk',1);

%dilate the image according to the disk size, performs binary dilation 
%black to white pixels, increase white pixel intensity according to the
%disk size, becoz it increase the pixels at the corners
im1 = imdilate(image,a);
figure; imshow(image);title('figure4');

%erode the image according to the disk size, performs binary erosion
%white to black pixels,increase black pixel intensity according to the
%disk size, becoz it removes the pixels at the corners
im2 = imerode(image,a);
figure; imshow(image);title('figure5');

%subtract the two images for edges collection
%and for background seperation
image = imsubtract(im1,im2);
figure; imshow(image);title('figure6');

%I contains values in the range 0.0 (black) to 1.0 (full intensity or white).
%amin and amax are the values in A that correspond to 0.0 and 1.0 in I.
%Values less than amin become 0.0, and values greater than amax become 1.0.
% mat2gary sets the values of amin and amax to the minimum and maximum values in A.
image = mat2gray(image);
figure; imshow(image);title('figure7');

%to brighten the high intensity pixels and darken the low intensity pixels
image = conv2(image,[1 1;1 1]);
figure; imshow(image);title('figure8');

%adjust the image according to their intensities
image = imadjust(image,[0.5 0.7],[0 1],0.1);
figure; imshow(image);title('figure9');

% Any nonzero element of A is converted to logical 1 (true) and zeros are
%converted to logical 0 (false).
image = logical(image);
figure; imshow(image);title('figure10');

%to fill the holes in the image generally white dots
image = imfill(image,'holes');
figure; imshow(image);title('figure11');

% It removes pixels
image = bwmorph(image,'thin',2);
figure; imshow(image);title('figure12');

%becoz it removes the pixels at the corners according to disk size
image = imerode(image,strel('line',3,90));
figure; imshow(image);title('figure13');

%pass image to another function
character_extractor( image );
end