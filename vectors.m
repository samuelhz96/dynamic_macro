% vectors and matrices
% Samuel Hashem Zehi, Student ID 12012285


%%%%%%%%%%%%%%%%%%%
%%%% (a) %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%

% row vector of even numbers from 0 to 20
u = [0:2:20]

% column vector of odd numbers from 11 to 31
w = [11:2:31]'


%%%%%%%%%%%%%%%%%%%
%%%% (b) %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%

y = sqrt(w)
% element-wise square root

y^2
% gives an error message as y is not a square matrix


%%%%%%%%%%%%%%%%%%%
%%%% (c) %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%

B = [1,2;3,4;5,6]
C = 2*ones(2)

% add matric C at the bottom of B
D = [B;C]


%%%%%%%%%%%%%%%%%%%
%%%% (d) %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%

P1 = B * C
P2 = C * B
% error message due to the matrix sizes not being conformable

% element-wise multiplication of the first two rows of each matrix
B(1:2,1:2).*C



%%%%%%%%%%%%%%%%%%%
%%%% (e) %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%


A = [1,1,1,1;1,2,3,4;1,3,6,10;1,4,10,20]
b = [3,2,-1,-5]'

x = A\b
% this solves the system of equations described by Ax=b for the 
% vector of unknowns









