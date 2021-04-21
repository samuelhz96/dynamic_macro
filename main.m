% Problem Set 3, Dynamic Macroeconomics with Numerics
% Exercise 2 (b)-(d)
% Samuel Hashem Zehi, Student ID 12012285

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% (c) General Setup %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Specification of the function which is used to maximize the
% discounted, two-period utility of the agent

% Load parameters:
parameters;
disp(P)

% Set initial endowment:
Y = 10;

% Create anonymus function:
fun = @(c) c.^(-P.gamma)-P.alpha.*P.beta.*P.A.^(1-P.gamma).*(Y-c).^((1-P.gamma).*P.alpha-1);

% Create derivative of function (for later use):
dfun = @(c) P.alpha.*P.beta.*((1-P.gamma).*P.alpha-1).*P.A.*(Y-c).^((1-P.gamma).*P.alpha-2)-P.gamma.*c.^(-P.gamma-1);


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% (d) PLOT %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Define vector of consumption values for the plot
c = 1:0.1:10;

% Plot the function defined above:
plot(c,fun(c));
title('Value of the derivative of the discounted lifetime utility');
legend('$c_1^{-\gamma}-\alpha \beta A^{1-\gamma}(Y_1-c_1)^{(1-\gamma)\alpha-1}$','Interpreter','latex');
xlabel('Consumption in period 1');


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% (e) Newton Method Call and Test %%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Set starting value for iterative method
x0 = 5;


% Call root-finder and print three results
    % 1. x value at which the root is
    % 2. value of the derivative at the root
    % 3. Check for reason of convergence (ideal: 1)
[x,fval,exitflag] = fzero(fun,x0)
% the distance is simply the second output argument; here: -1.7347e-18

% Use own algorithm:
[x,iter,fval] = newton(fun,dfun,x0)
% the distance is simply the third output argument; here: -1.7347e-18

% check if answers are very close together
abs(fzero(fun,x0) - newton(fun,dfun,x0)) <= 1e-12;
% this appears to be the case


% check if it works for other functions:

% example: x^3; df = 3x^2; ddf = 6x
% a bit of a bad example since we don't find a maximum but a saddle point

funThree = @(x) 3.*x.^2;
dfunThree = @(x) 6.*x;

[x,iter,fval] = newton(funThree,dfunThree,3);
% appears to work (but seems to need lots of iterations)


% example: f(x) = 2x-x^4, df = 2-4x^3, ddf = -12x^2
funX1 = @(x) 2-4.*x.^3;
dfunX1 = @(x) -12.*x^2;
[x,iter,fval] = newton(funX1,dfunX1,0.1);
% pretty close, so the function appears to work
% not too many iterations as well




