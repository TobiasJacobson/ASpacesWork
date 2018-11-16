function [F] = func5(X, a, b, t, varargin)

% Syntax for inputting multiple variables?

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   Test functions number 5. Funcion is a ??.
%
%   Inputs:
%          X: N-by-m matrix consisting of N samples of vectors in R^m
%          a: constant coefficient #1
%          b: constant coefficient #2
%          t: serves as Tao 
%          p: N-by-1 vector that contains the corresponding N evaluations
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

%function evaluation/definition
F = double(((a*X(:,1) + b*X(:,2)) < t));
end