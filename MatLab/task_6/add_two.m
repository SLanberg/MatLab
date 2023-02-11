%% 7.
% Write a summation function that sums 2 numbers and returns total without
% use of builtin functions. In seperate function.

% Define function
function summation = add_two()
  % Get input for a
  a = input('Enter first number: ');

  % Get input for b
  b = input('Enter second number: ');

  % Return total
  summation = a + b;
end

% Time Complexity O(1)