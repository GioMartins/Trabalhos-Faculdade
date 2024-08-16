  function [ fobj, dfobj ] = fex1( x )
% Fun��o objetivo
  a = 1.5e-2;

  dim = length(x);
  A1 = diag(1:dim);
  c1 = ones(dim,1);
  B1 = A1*diag((x - c1));

  fobj = 0.5*(x - c1)'*A1*(x - c1) + a*(x - c1)'*B1*(x - c1);

% Gradiente fun��o objetivo
  dfobj = A1*(x - c1) + 3*a*B1*(x - c1);

  end

