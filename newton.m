function [x,iter,fval] = newton(fun,dfun,x0)
    % NEWTON uses a function and its derivative to find a root to the 
    %   original function via an iterative procedure
    % Inputs:
    %   - function: fun
    %   - derivative of function: dfun
    %   - starting guess x0
    % Output:
    %   - root of the function
    %   - number of iterations needed
    %   - function value at root
    % Author: Samuel Hashem Zehi
    % Lecture: Dynamic Macroeconomics with Numerics (SS21)
    % Student ID: 12012285
    
    tol     = 1e-12;                    % tolerance for root finding
    maxiter = 150;                      % maximum number of iterations
    i       = 0;                        % index to keep track of iterations
    x1gen   = @(x) x-fun(x)./dfun(x);   % create updater function
    x1      = x1gen(x0);                % create first updated point
    while abs(x0-x1) > tol && i < maxiter
        % Calculate tangent intersection point with x-axis:
        xnew    = x1gen(x1);
        % Update the points for next iteration:
        x0      = x1;
        x1      = xnew;
        i       = i+1;
    end
    x = x1;
    iter = i;
    fval = fun(x);
end