% Create an empty matrix of size 20x20
A = zeros(20);

% Set the elements on the main diagonal to 3
% The main diagonal of a matrix is the diagonal that 
% runs from the top-left corner to the bottom-right corner.
% The first element, 1, specifies the starting index, 
% and the second element, 20+1, specifies the increment between indices.
% The third element, end, specifies the ending index.
A(1:20+1:end) = 3;

% For example, 
% for a 20x20 matrix, the indices generated 
% by the colon operator will be [1 21 41 61 81 101 121 141 161 181].

% Set all other elements to 1
% By default they are all zeros
% Because we defined already main diagonal it will be like discrete math
% complement logic
A(A==0) = 1;

% Suppress the output of the matrix
% Alternatively, you can use the semicolon to suppress 
% the output of the previous statement
% A(A==0) = 1;
% or
% A = A + (A==0);

% Create the submatrix B consisting of the last 5 rows and last 4 columns
B = A(16:20, 17:20);

A = A(17:20, 17:20);

% Display the shorter A matrix like in issue output example:
disp(A);

% Display the submatrix B
disp(B);

% Time Complexity O(1)
