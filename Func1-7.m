function [F] = func1(X, varargin)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   Test functions number 1. Quadratic non-ridge function.
%
%   Inputs:
%          X: N-by-m matrix consisting of N samples of vectors in R^m
%          f: N-by-1 vector that contains the corresponding N evaluations
%          opts: (optional) 
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% variable length input argument list checks
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

% function evaluation
F = (X(:,1) + X(:,2)).^2;
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [F] = func4(X, varargin)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   Test functions number 4. Given function with linear part and 
%   e with argument as power in denomenator of second part.
%
%   Inputs:s
%          X: N-by-m matrix consisting of N samples of vectors in R^m
%          f: N-by-1 vector that contains the corresponding N evaluations
%          opts: (optional) 
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% variable length input argument list checks
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

% function evaluation
F = 5*(X(:,1)) + (1/(1+exp(-10*(X(:,2)))));
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

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
F = ((a*X(:,1) + b*X(:,2)) < t);
end


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [F] = func7(X, sigma, a, b, varargin)

% Syntax for inputting multiple variables?

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   Test functions number 7. Funcion is a ???.
%
%   Inputs:
%          X: N-by-m matrix consisting of N samples of vectors in R^m
%          a: constant coefficient #1
%          b: constant coefficient #2
%          r: constant coefficient #3 
%          f: N-by-1 vector that contains the corresponding N evaluations
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
F = exp(sigma*(a*X(:,1) + b*X(:,2)));
end
