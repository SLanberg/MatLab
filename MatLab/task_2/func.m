%% 2.
% Define the functions f(x)=e^x-1 and g(x)=x+x^2/2+x^3/6+x^4/24 
% plot them on the same diagram.

% define function f(x)
% @(x) defines an anonymous function with an input variable x.
% x is the input variable of the function.
f = @(x) exp(x) - 1;

% define function g(x)
% x.^2 raises each element of the matrix x to the power of 2. 
% This is known as the element-wise power operator in Matlab.
% the anonymous function g(x) takes an input x, raises each element of x 
% to the powers of 2, 3, and 4, and returns the sum of these terms, 
% along with the original value of x. For example, 
% if x = [1 2; 3 4], then g(x) would return 
% [1 + 1 + 1/2 + 1/6 + 1/24 2 + 4 + 8/2 + 27/6 + 256/24; 3 + 9 + 81/2 
% + 729/6 + 16384/24 4 + 16 + 256/2 + 4096/6 + 262144/24].
g = @(x) x + x.^2/2 + x.^3/6 + x.^4/24;

% define a range of x values
% creates a row vector of evenly spaced values.
x = -2:0.1:2;

% plot f(x) in blue and g(x) in red
% In Matlab, the plot function is used to create a plot of data. 
% The plot function takes a series of x- and y-values
% as input, and creates a line or scatter plot of the data.
% In the plot function, 
% the input x represents the x-values of the plot, 
% while the input f(x) or g(x) represents the corresponding y-values.
plot(x, f(x), 'b', x, g(x), 'r')

% add a legend to the plot
% The legend function in Matlab is used to add a legend to a plot. 
% In the case of the script legend('f(x)', 'g(x)'), 
% the legend will label the two curves on the plot as 'f(x)' and 'g(x)', 
% respectively. The legend function takes a list of strings as input, 
% with each string representing the label for a curve on the plot.
legend('f(x)', 'g(x)')

% Time Complexity - O(1)