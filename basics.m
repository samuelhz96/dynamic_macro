% basics of matlab (or octave)
% Samuel Hashem Zehi, Student ID 12012285


%%%%%%%%%%%%%%%%%%%
%%%% (a) %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%

% store variable 'result'
result = ((2/3^2)*5)*(3.14-4^2)^3

% calculate different rounding options:
round(result)
floor(result)
ceil(result)


%%%%%%%%%%%%%%%%%%%
%%%% (b) %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%

% call and comment on commands

help realmin
% this function gives us a vector, scalar, matrix, or array with the 
% smallest representable floating point number given the system matlab uses

help realmax
% this does the same as the above but with the largest representable 
% floating point number

help eps 
% given some argument, this gives the distance to the next largest 
% floating point number (if only one argument given)
% can be viewed as the precision 

help clc
% clears the command window

help exit
% exits something (depends on where it is called)
% for example in a loop



%%%%%%%%%%%%%%%%%%%
%%%% (c) %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%

e^(i*pi)+1==0

% gives '0', i.e. the relationship does not hold here
% the reasoning is the limited precision with which the 
% machine operates. Only without rounding (errors) this 
% relationship holds.





















