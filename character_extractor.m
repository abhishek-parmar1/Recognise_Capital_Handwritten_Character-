function [] = character_extractor( image )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

% Label connected components
% L defines properties of each connected regions
% Ne defines total connected regions in image
[L Ne]=bwlabel(image);

% Measure properties of image regions
%propied stores the area of the boundingbox
propied=regionprops(L,'BoundingBox');


hold on
% Plot Bounding Box on the figure
rectangle('Position',propied.BoundingBox,'EdgeColor','g','LineWidth',2)
hold off

pause (1)

% character extraction
%this loop initialise the row and column range of bounding box for each
%connected component and extract the character from it
for n=1
[r,c] = find(L==n);
extracted_character=image(min(r):max(r),min(c):max(c));
figure();imshow(extracted_character);title('extracted character')
pause(0.5)  
end

%resize image to 64 * 64 size
image=imresize(extracted_character,[64 64]);
figure();imshow(image);

%discrete cosine transform for feature extraction
final_array=dct2(image,size(image));

%matrix converted to single column and then transpose the matrix of image
final_array=final_array(:)';

%storing array to work space
assignin('base', 'check', final_array);

%now run the final.m script



