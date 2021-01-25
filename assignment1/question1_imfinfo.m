%% Define the list of files to read
files = ["pout.tif", "coins.png", "cameraman.tif", "rice.png"];
num_files = length(files);

%% Preallocate array (memory management best practices)
image_data = repmat(struct('name', "", 'width', 0, 'height', 0), 1, num_files);

%% Populate array with image data
for i = 1:num_files
    info = imfinfo(files(i));
    image_data(i).name = files(i);
    image_data(i).width = info.Width;
    image_data(i).height = info.Height;
end

%% Inspect what we have so far
arrayfun(@(x) disp(x.name + ', ' + x.width + ', ' + x.height), image_data)

%% Save to a file
file_name = 'image_data.mat';
save(file_name, 'image_data')

%% Verify that we indeed saved it
clear image_data
load(file_name)
arrayfun(@(x) disp(x.name + ', ' + x.width + ', ' + x.height), image_data)