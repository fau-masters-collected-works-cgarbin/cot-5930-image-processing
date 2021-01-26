%% Beginner's code
I = imread('coins.png');
tStart = tic; % do not count the time to read the file
[height, width] = size(I);
J = uint8(zeros(size(I)));
for i=1:height
    for j=1:width
        J(i,j) = 0.5 * I(i,j);
    end
end
figure, imshow(I)
figure, imshow(J)
tEnd = toc(tStart);
fprintf("Elapsed time - beginner's code: %fs\n", tEnd)

%% Better code
% Vectorized operations
% Solves the computational problem from the original code: using a loop
% instead of vectorizing the code
Ib = imread('coins.png');
tStart = tic;
Jb = Ib * 0.5;
figure, imshow(Ib)
figure, imshow(Jb)
tEnd = toc(tStart);
fprintf("Elapsed time - vectorized 1: %fs\n", tEnd)


%% Betterer code
% Vectorized operation, no intermediate variable, better UI
% Improves the user interface by showing the original and modified images
% side by side - as a bonus, it significantly improves the time to show
% the images to the users (one window instead of two)
% From the practical point of view, i.e. what the user perceives, the
% change to `montage` is the largest improvement
Ic = imread('coins.png');
tStart = tic;
montage([Ic, Ic * 0.5])
tEnd = toc(tStart);
fprintf("Elapsed time - vectorized 2: %fs\n", tEnd)

