%% %High sharpen: over-sharpen image using unsharp masking
    
function J = imsharpenHi(I, amount, radius)

if ~exist('radius','var')
    radius = 3;
end

J = imsharpen(I, 'Radius', radius, 'Amount', amount);
J = truncate(im2double(J));


%Strength of the sharpening effect, specified as a numeric scalar. 
%A higher value leads to larger increase in the contrast of the sharpened pixels. 
%Typical values for this parameter are within the range [0 2], although values greater than 2 are allowed. 
%Very large values for this parameter may create undesirable effects in the output image

%'Radius' — Standard deviation of the Gaussian lowpass filter (default 1)
%Standard deviation of the Gaussian lowpass filter, specified as a positive number. 
%This value controls the size of the region around the edge pixels that is affected by sharpening. 
%A large value sharpens wider regions around the edges, whereas a small value sharpens narrower regions around edges.
