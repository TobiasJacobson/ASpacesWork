function [F] = func3(X, A, varargin)

% Syntax for inputting multiple variables?

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   Test functions number 3.
%
%   Inputs:
%          X: N-by-m matrix consisting of N samples of vectors in R^m
%          A: Serves as acceleration phi??
%          r: N-by-1 vector that contains the corresponding N evaluations
%          opts: (optional)
%          ....... 
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

if isempty(varargin)
    opts = [];
elseif length(varargin) == 1
    opts = varargin{1}; %returns value if only vector length of 1
    if ~isstruct(opts)% cant pass bc different fields?
        error('ERROR: Inappropriate inputs passed') 
    end
else  % only one varaible defined in function so cant have multiple inputs
    error('ERROR: Too many inputs.') % therefore ERROR
end
%function evaluation/definition
F = 5*X(:,1) + A*sin(10*pi*X(:,2)); % Why is syntax incorrect here?
end