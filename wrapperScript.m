clearvars; close all; clc;
[X1,X2] = meshgrid(linspace(-1,1,10),linspace(-1,1,10));
X = [reshape(X1,10^2,1),reshape(X2,10^2,1)];
n = 7;

if n == 1
    F = func1(X);
    scatter(X(:,1), X(:,2), 30, 'filled', 'cdata', F);
    figure;
    contour(X1, X2, reshape(F, 10, 10), 30);
    colorbar;
elseif n == 2
    F = func2(X);
    scatter(X(:,1), X(:,2), 30, 'filled', 'cdata', F);
    figure;
    contour(X1, X2, reshape(F, 10, 10), 30);
    colorbar;
elseif n == 3
    a = 1;
    F = func3(X,a);
    scatter(X(:,1), X(:,2), 30, 'filled', 'cdata', F);
    figure;
    contour(X1, X2, reshape(F, 10, 10), 30);
    colorbar;
elseif n == 4
    F = func4(X);
    scatter(X(:,1), X(:,2), 30, 'filled', 'cdata', F);
    figure;
    contour(X1, X2, reshape(F, 10, 10), 30);
    colorbar;
elseif n == 5
    a = 1;
    b = 2;
    t = 1;
    F = func5(X, a, b, t);
    scatter(X(:,1), X(:,2), 30, 'filled', 'cdata', F);
    figure;
    contour(X1, X2, reshape(F, 10, 10), 30);
    colorbar;
elseif n == 6
    s = 0.1;
    a = 2;
    b = 3;
    F = func6(X, s, a, b);
    scatter(X(:,1), X(:,2), 30, 'filled', 'cdata', F);
    figure;
    contour(X1, X2, reshape(F, 10, 10), 30);
    colorbar;
elseif n == 7
    s = 1;
    a = 1;
    b = 1;
    F = func7(X, s, a, b); 
    scatter(X(:,1), X(:,2), 30, 'filled', 'cdata', F);
    figure;
    contour(X1, X2, reshape(F, 10, 10), 30);
    colorbar;
else
    disp("Not a valid option");
end
