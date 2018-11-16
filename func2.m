function [F] = func2(X, varargin)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   Test functions number 2. Squared non-ridge function.
%
%   Inputs:
%          X: N-by-m matrix consisting of N samples of vectors in R^m
%          g: N-by-1 vector that contains the corresponding N evaluations
%          opts: (optional) 
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
F = X(:,1).^2 + X(:,2).^2; 
end
