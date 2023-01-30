% The default len is 9 and the default theta is 0, which corresponds to a horizontal motion of nine pixels.
function blurredImage = immotionblur(im, len, angle)

if ~exist('angle','var')
    angle = randi([0, 180], 1);
end

    h = fspecial('motion',len, angle) ;
    blurredImage = imfilter(im, h,'replicate','same');
    %savname=sprintf('%s%s%d%s',savn, 'motionblur_lev', deg, '.png') ;
  %  imwrite(blurredImage,savname)