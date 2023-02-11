%% 4. 
% What is the sum of all integers between 0 and 100, 
% that are not divisible by 2 nor are they divisble by 3?
% (Answer 1633)

% How-to do it?
% We make for loop with a range

% In Python:
% total = 0
% for i in range(100):
%   if i % 2 != 0 and i % 3 != 0:
%       total += i

% Read the upper bound of the range from the user
prompt = ['Number for factorial total of numbers ' ...
    'not divisible by 2 and 3: '];
upper_bound = input(prompt);

% Convert the input to an integer
upper_bound = int32(upper_bound);

total = 0;
% Iterate over the range from 1 to the upper bound
for i = 1:upper_bound
    % We check modulo condition
    if mod(i, 2) ~= 0 && mod(i, 3) ~= 0
        % We add to total passed by if number
        total = total + i;
    end
end

disp(total);

% Time complexity - O(n)