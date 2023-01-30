% Noise density for salt and pepper noise, specified as a numeric scalar. 
%The noise is applied to approximately d*numel(I) pixels.
% default 0.05
function J =imspecklenoise(im, deg)
    rng(1)
    J = imnoise(im,'speckle', deg) ;
%    savname=sprintf('%s%s%f%s',savn, 'specklenoise_lev', deg, '.png') ;
%    imwrite(J,savname)