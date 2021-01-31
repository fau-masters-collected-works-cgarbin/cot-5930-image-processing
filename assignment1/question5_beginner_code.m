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

%% Questions about the code
%
% a) Does the script work as expected?
% Yes
%
% b) Will it still work if you remove the uint8 typecasting in line 32? Why (not)?
% No, because the default type for `zeros` is double.
%
% c) What is the main problem of with this code? Be specific!
% It uses `for` loops to apply the same operation on all elements of a matrix
% (array). It should use vectorized operations instead.
%
% d) Rewrite the code to improve its efficiency while keeping it readable.
% See next code sections.
%
% e) Compare the performance of the original code against the modified version you
%    you wrote, using tic and toc.
% See timing printed after code section.

%% Better code
% Vectorized operations
% Solves the computational problem from the original code: using a loop instead of
% vectorizing the code
Ib = imread('coins.png');
tStart = tic;
Jb = Ib * 0.5;
figure, imshow(Ib)
figure, imshow(Jb)
tEnd = toc(tStart);
fprintf("Elapsed time - vectorized: %fs\n", tEnd)

%% Betterer code
% Vectorized operation, no temporary variable, better UI
% Improves the UI by showing the original and modified images side by side
% As a bonus, it significantly improves the time to show the images to the users (one
% call to a graphing/windowing function instead of two)
% From the practical point of view, i.e. what the user perceives, the change to
% `montage` is the largest improvement in responsiveness
Ic = imread('coins.png');
tStart = tic;
montage([Ic, Ic * 0.5])
tEnd = toc(tStart);
fprintf("Elapsed time - vectorized + montage: %fs\n", tEnd)

