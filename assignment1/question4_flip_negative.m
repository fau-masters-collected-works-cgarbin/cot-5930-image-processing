img = imread("cameraman.tif");

montage({img, imcomplement(img), fliplr(img), flipud(img)}, 'Size', [2 2]);
