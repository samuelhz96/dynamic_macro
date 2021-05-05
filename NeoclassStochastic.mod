% 1. Declarations
%--------------------------------------------------------------------------

var c,k,z,i,y,delta;
varexo e,v;
parameters beta, eta, alpha, rho, zbar, rhod;

%--------------------------------------------------------------------------
% 2. Parameter values
%--------------------------------------------------------------------------

beta = 0.95;
eta=2;
alpha = 1/3;
rhod = 0.99;
dbar = 0.025;
rho = 0.9;
zbar=1;
%--------------------------------------------------------------------------
% 3. Model equations
%--------------------------------------------------------------------------

model;
log(delta) = (1-rhod)*log(0.025)+rhod*log(delta(-1))+v;
c^(-eta)=beta*(1-delta+alpha*z(+1)*k^(alpha-1))*c(+1)^(-eta);
k=z*k(-1)^alpha+(1-delta)*k(-1)-c;
z-zbar=rho*(z(-1)-zbar)+e;
y=z*k(-1)^alpha;
i=y-c;
end;

%--------------------------------------------------------------------------
% 4. Steady states
%--------------------------------------------------------------------------

initval;
z = 1;
delta = 0.025;
c= 1;
k= 3;
end;

steady(solve_algo=1);
check;

%--------------------------------------------------------------------------
% 5. Shocks and solution
%--------------------------------------------------------------------------

shocks;
var e = 0.0004;
var v = 0.005;
end;

stoch_simul(order=1,periods=1000,irf=300);
rplot y c i;