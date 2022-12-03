%% Student Number 109018
load("table_values.mat")
sol1_t = readtable("sol1_55.txt");

%% Student Number 105937
load("table_values.mat")
%sol1_t = readtable("sol1_55.txt");

%% Least Squares Fit
x = table2array(sol1_t([1:51],1)); % extract the first column
y = table2array(sol1_t([1:51],5)); % extract the 5th column
y2 = log(y);
X = [ 0*x+1, x ]; % build the X matrix
w = pinv(X)*y2; % optimal solution (could also be written as w = X \ y;)
e = y2-X*w; % optional: compute the errors vector
format long
w % print w --- A = w(1), B = w(2), and C = w(3)
norm(e) % optional: print the norm of the error vector (square root of the sum of squares)
plot(x,y2,'.r',x,X*w,'og'); % plot the original data and its best least squares approximation

a = exp(w(1));
b = w(2);
seconds = a*exp(800*b)
years = seconds*3.1688087814029e-8