%radius — Radius of a disk-shaped filter
%5 (default) | positive number

%Radius of a disk-shaped filter, specified as a positive number. 
%The filter is a square matrix of size 2*radius+1.
function blurredImage=imlensblur(im, deg_lb)
    h = fspecial('disk',deg_lb);
    blurredImage = imfilter(im, h,'replicate','same' );