function [F] = func6(X, sigma, a, b, varargin)

% Syntax for inputting multiple variables?

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   Test functions number 6. Funcion uses exp as function of vector X.
%
%   Inputs:
%          X: N-by-2 matrix consisting of N samples of vectors in R^m
%          a: constant coefficient #1
%          b: constant coefficient #2
%          p: serves as phi 
%          ns: N-by-1 vector that contains the corresponding N evaluations
%          opts: (optional) 
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

if isempty(varargin)
    opts = [];
elseif length(varargin) == 1
    opts = varargin{1};
    if ~isstruct(opts)
        error('ERROR: Inappropriate inputs passed')
    end
else
    error('ERROR: Too many inputs.')
end
F = 1./(1 + exp( -sigma*(a*X(:,1) + b*X(:,2)) ));
end