img = imread("pout.tif");

sprintf("Gray levels: maximum=%d, minimum=%d, average=%f", ...
    max(img(:)), min(img(:)), mean(img(:)))

%imshow(img)
