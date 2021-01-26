[file, path] = uigetfile({'*.png;*.jpg;*.jpeg;*.tif;*,bmp', 'Pictures'},...
               'Select an image');
if file ~= 0
    img = imread([path file]);
    montage({img, imcomplement(img), fliplr(img), flipud(img)}, 'Size', [2 2]);
end
