%% 3. 
% You are given a list of integers [1 2 1 6 -3 -10 -100 -5 16 3 2]. 
% Subset the list and return all even positive integers.
% Your method should be applicable to any integer list.

% (Answer: [2 6 16 2])

% How-to do it at glance:
% if number more than zero and divided by 2 without reminder add to new
% array print new array

% list = [1 2 1 6 -3 -10 -100 -5 16 3 2];

% I will do one liner that will create list based on 2 conditional
% "Is positive and Is even"
% evenPositive = list(mod(list, 2) == 0 & list > 0);

% Matlab has builtin methods isinteger function to check if an element 
% is an integer, and iseven, but!

% I do not agree with isinteger defined by Matlab!
% Language position itself as a mathematically focused,
% In most contexts in all other languages, 
% negative integers are considered to be integers. 
% However, the isinteger function in MATLAB specifically checks 
% for elements that are both integers and POSITIVE.
% This means that integers will not be considered to be integers 
% by the isinteger function. Of course that could be negated by abs()
% attribute, however I would want to avoid usage of that function
% completely and optimize my code.

% I will use more extended variant with classic for loop

% list = [1 2 1 6 -3 -10 -100 -5 16 3 2];

% Time complexity - O(n)

prompt = "Provide list: ";
list = input(prompt);

evenNaturals = [];
% numel function returns the number of elements in an array. 
% It is similar to the length function, but numel works for arrays 
% of any dimension, while length only works for vectors 
% (one-dimensional arrays).
for i = 1:numel(list)
  if mod(list(i), 2) == 0 && list(i) > 0
    % This is how you append in Matlab.
    evenNaturals = [evenNaturals, list(i)];
  end
end

disp(evenNaturals);

% Time Complexity - O(n)
