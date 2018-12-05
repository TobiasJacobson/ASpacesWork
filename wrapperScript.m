clear all;
close all;
clc;
%function [F] = wrapperScript()
[X1,X2] = meshgrid(linspace(-1,1,10),linspace(-1,1,10));
X = [reshape(X1,10^2,1),reshape(X2,10^2,1)];
n = input("Enter the digit of the function you want to run");
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
    a = input("Enter a numerical digit for acceleration phi");
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
    a = input("Enter a number for coefficient #1");
    b = input("Enter a number for coefficient #2");
    t = input("Enter a number for Tao");
    F = func5(X, a, b, t);
    scatter(X(:,1), X(:,2), 30, 'filled', 'cdata', F);
    figure;
    contour(X1, X2, reshape(F, 10, 10), 30);
    colorbar;
elseif n == 6
    s = input("Enter a value for sigma");
    a = input("Enter a number for coefficient #1");
    b = input("Enter a number for coefficient #2");
    F = func6(X, s, a, b);
    scatter(X(:,1), X(:,2), 30, 'filled', 'cdata', F);
    figure;
    contour(X1, X2, reshape(F, 10, 10), 30);
    colorbar;
elseif n == 7
    s = input("Enter a value for sigma");
    a = input("Enter a number for coefficient #1");
    b = input("Enter a number for coefficient #2");
    F = func7(X, s, a, b); 
    scatter(X(:,1), X(:,2), 30, 'filled', 'cdata', F);
    figure;
    contour(X1, X2, reshape(F, 10, 10), 30);
    colorbar;
else
    disp("Not a valid option");
end
