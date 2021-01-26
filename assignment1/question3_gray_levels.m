img = imread("pout.tif");

sprintf("Gray levels: maximum=%d, minimum=%d, average=%f", ...
    max(img(:)), min(img(:)), mean(img(:)))

% Note to self: "figure, " is not strictly necessary here because we have
% only one picture to show
% See https://www.mathworks.com/help/images/display-multiple-images.html
figure, imshow(img)
