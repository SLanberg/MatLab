% Input the amount of kilograms of the first grocery
prompt = 'How many kilograms of the first grocery would you like to buy?\n';
x_quantity = input(prompt);

% Input the amount of kilograms of the second grocery
prompt = 'How many kilograms of the second grocery would you like to buy?\n';
y_quantity = input(prompt);

% Input the difference in price between the two groceries
prompt = 'How much price of the first bigger than the second product?\n';
difference = input(prompt);

% Input the total cost of the two groceries
prompt = 'What is the total price?\n';
total = input(prompt);

% Solve for x and y using the linear equation
% The first row represents the coefficients of the x and y 
% variables in the first equation of the system, which is x = y + difference.
% The first element of the first row (1) 
% represents the coefficient of x in the first equation. 
% The second element of the first row (-1) represents 
% the coefficient of y in the first equation.
A = [1, -1; x_quantity, y_quantity];
b = [difference; total];
solution = linsolve(A, b);

% Print the cost per kilogram of each grocery
% the function "linsolve(A, b)" 
% is used to solve the system of linear 
% equations represented by the matrix A and the vector b. 
% The output of this function is a vector, 
% in this case, the vector 'solution', 
% which contains the values of the variables (x and y) 
% that satisfy the system of equations.
% The expression "solution(1)" refers to 
% the first element of the solution vector, 
% which is the value of the variable x 
% (the cost per kilogram of the first grocery). 
% The expression "solution(2)" refers to the second element 
% of the solution vector, which is the value of the variable y 
% (the cost per kilogram of the second grocery).
% So, the line "x = solution(1)" assigns the first 
% element of the solution vector to the variable x, 
% which represents the cost per kilogram of the first grocery. 
% Similarly, the line "y = solution(2)" assigns the second element 
% of the solution vector to the variable y, which represents the 
% cost per kilogram of the second grocery.
x = solution(1);
y = solution(2);

% Names A and B used for simplicity to work with
% Names for A and B would be taken the same input method
% With a prompt that is used at the top of the file

fprintf('Answer: [A=%0.2f,B=%0.2f] €/kg', x, y)

% Time complexity - O(1)