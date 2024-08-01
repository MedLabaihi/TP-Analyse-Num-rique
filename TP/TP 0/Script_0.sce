A=[1.,2.,3.
    4.,5.,6.
    7.,8.,0.];
    
b = A*ones(1:3)';

X= A\b;

Y = linsolve(A,-b);

err= abs(X-Y);
