clearvars; close all; clc;
%Necessary path for compute
AS_HOME = '~/Documents/ResearchGroup/GitHub/matlab';
addpath(AS_HOME);
addpath([AS_HOME,'/Subspaces']);
addpath([AS_HOME,'/ResponseSurfaces']);
addpath([AS_HOME,'/Domains']);

%Needed Inputs
[X1,X2] = meshgrid(linspace(-1,1,10),linspace(-1,1,10));
X = [reshape(X1,10^2,1),reshape(X2,10^2,1)];
n = 1; %Function
t = 3; %SS varient type 0 - 11
Nrnd = 100;
Xrnd = 2*rand(Nrnd, 2)-1;

% Issue to work out
%   - Compute using t = 0 - 3 "X or df is empty"
% NOTE: df is 3rd input in compute,use if for ssType
%   - n = 3 "Dimensions of arrays being concatenated are not consistent."
%   - n = 4 "Dimensions of arrays being concatenated are not consistent."
%   - n = 5 "df is empty"
if n == 1
    u =[1;1];
    u = u/norm(u);
    [F,G] = func1(X);
    [Frnd, Grnd] = func1(Xrnd);
    % Wrapper implementation -- 
    if(0 <= t) && (t <= 4)
        [W,metric] = SSWrapper(F,X,Grnd,t);
    else
        [W,metric] = SSWrapper(F,X,Grnd,t);
    end
    scatter(Xrnd(:,1), Xrnd(:,2), 30, 'filled', 'cdata', Frnd); hold on;
    quiver(Xrnd(:,1), Xrnd(:,2),Grnd(:,1),Grnd(:,2),1);
    %figure;
    contour(X1, X2, reshape(F, 10, 10), 30); hold on;
    quiver(X(:,1), X(:,2),G(:,1),G(:,2),1);
    %tic
    %[W,D] = svd(G',0); With systematic/uniform node spacing
    %[W,D] = svd(Grnd'*1/sqrt(Nrnd),0); toc
    % plot active and inactive directions
    quiver(0,0,W(1,1),W(2,1),'b','linewidth',2);
    quiver(0,0,W(1,2),W(2,2),'r','linewidth',2);
    % project into the active subspace
    figure; scatter(Xrnd*W(:,1),Frnd,30); title 'shadow plot'; xlabel 'w_1^Tx'; ylabel 'F1';
    figure; surf(X1,X2,reshape(F,10,10));
    colorbar;
    %---------
    %Calling compute function
    %SSWrapper(F,X,t);
   
elseif n == 2
    [F,G] = func2(X);
    [Frnd, Grnd] = func2(Xrnd);
    scatter(Xrnd(:,1), Xrnd(:,2), 30, 'filled', 'cdata', Frnd); hold on;
    quiver(Xrnd(:,1), Xrnd(:,2),Grnd(:,1),Grnd(:,2),1);
    %figure;
    contour(X1, X2, reshape(F, 10, 10), 30); hold on;
    quiver(X(:,1), X(:,2),G(:,1),G(:,2),1);
    %tic
    %[W,D] = svd(G',0); toc
    %[W,D] = svd(Grnd'*1/sqrt(Nrnd),0); toc
    W = SSWrapper(F,X,t);
    % plotting active and inactive directions
    quiver(0,0,W(1,1),W(2,1),'b','linewidth',2);
    quiver(0,0,W(1,2),W(2,2),'r','linewidth',2);
    % projecting into the active subspace
    figure; scatter(Xrnd*W(:,1),Frnd,30); title 'shadow plot'; xlabel 'w_1^Tx'; ylabel 'F2';
    figure; surf(X1,X2,reshape(F,10,10));
    colorbar;
elseif n == 3
    a = 1;
    [F,G] = func3(X,a);
    [Frnd, Grnd] = func3(Xrnd, a);
    scatter(Xrnd(:,1), Xrnd(:,2), 30, 'filled', 'cdata', Frnd); hold on;
    quiver(Xrnd(:,1), Xrnd(:,2),Grnd(:,1),Grnd(:,2),1);
    %figure;
    contour(X1, X2, reshape(F, 10, 10), 30); hold on;
    quiver(X(:,1), X(:,2),G(:,1),G(:,2),1);
    %tic
    %[W,D] = svd(G',0); toc
    %[W,D] = svd(Grnd'*1/sqrt(Nrnd),0); toc
    % Wrapper implementation -- 
    [W,metric] = SSWrapper(F,X,t);
    % plotting active and inactive directions
    quiver(0,0,W(1,1),W(2,1),'b','linewidth',2);
    quiver(0,0,W(1,2),W(2,2),'r','linewidth',2);
    % projecting into the active subspace
    figure; scatter(Xrnd*W(:,1),Frnd,30); title 'shadow plot'; xlabel 'w_1^Tx'; ylabel 'F3';
    figure; surf(X1,X2,reshape(F,10,10));
    colorbar;
elseif n == 4
    [F,G] = func4(X);
    [Frnd, Grnd] = func4(Xrnd);
    scatter(Xrnd(:,1), Xrnd(:,2), 30, 'filled', 'cdata', Frnd);
    quiver(Xrnd(:,1), Xrnd(:,2),Grnd(:,1),Grnd(:,2),1);
    %figure;
    contour(X1, X2, reshape(F, 10, 10), 30); hold on;
    quiver(Xrnd(:,1), Xrnd(:,2),Grnd(:,1),Grnd(:,2),1);
    %tic
    %[W,D] = svd(G',0); toc
    %[W,D] = svd(Grnd'*1/sqrt(Nrnd),0); toc
    % Wrapper implementation -- 
    [W,metric] = SSWrapper(F,X,t);
    % plotting active and inactive directions
    quiver(0,0,W(1,1),W(2,1),'b','linewidth',2);
    quiver(0,0,W(1,2),W(2,2),'r','linewidth',2);
    % projecting into the active subspace
    figure; scatter(Xrnd*W(:,1),Frnd,30); title 'shadow plot'; xlabel 'w_1^Tx'; ylabel 'F3';
    figure; surf(X1,X2,reshape(F,10,10));
    colorbar;
elseif n == 5
    a = 1;
    b = 2;
    t = 1;
    [F,G] = func5(X, a, b, t);
    [Frnd, Grnd] = func5(Xrnd, a, b, t);
    scatter(Xrnd(:,1), Xrnd(:,2), 30, 'filled', 'cdata', Frnd);
    quiver(Xrnd(:,1), Xrnd(:,2),Grnd(:,1),Grnd(:,2),1);
    %figure;
    contour(X1, X2, reshape(F, 10, 10), 30); hold on;
    quiver(X(:,1), X(:,2),G(:,1),G(:,2),1);
    %tic
    %[W,D] = svd(G',0); toc
    %[W,D] = svd(Grnd'*1/sqrt(Nrnd),0); toc
    % Wrapper implementation -- 
    [W,metric] = SSWrapper(F,X,t);
    % plotting active and inactive directions
    quiver(0,0,W(1,1),W(2,1),'b','linewidth',2);
    quiver(0,0,W(1,2),W(2,2),'r','linewidth',2);
    % projecting into the active subspace
    figure; scatter(Xrnd*W(:,1),Frnd,30); title 'shadow plot'; xlabel 'w_1^Tx'; ylabel 'F3';
    figure; surf(X1,X2,reshape(F,10,10));
    colorbar;
elseif n == 6
    s = 0.1;
    a = 2;
    b = 3;
    [F,G]= func6(X, s, a, b);
    [Frnd,Grnd] = func6(Xrnd, s, a, b);
    scatter(Xrnd(:,1), Xrnd(:,2), 30, 'filled', 'cdata', Frnd);
    quiver(Xrnd(:,1), Xrnd(:,2),Grnd(:,1),Grnd(:,2),1);
    %figure;
    contour(X1, X2, reshape(F, 10, 10), 30); hold on;
    quiver(Xrnd(:,1), Xrnd(:,2),Grnd(:,1),Grnd(:,2),1);
    %tic
    %[W,D] = svd(G',0); toc
    %[W,D] = svd(Grnd'*1/sqrt(Nrnd),0); toc
    % Wrapper implementation -- 
    [W,metric] = SSWrapper(F,X,t);
    % plotting active and inactive directions
    quiver(0,0,W(1,1),W(2,1),'b','linewidth',2);
    quiver(0,0,W(1,2),W(2,2),'r','linewidth',2);
    % projecting into the active subspace
    figure; scatter(Xrnd*W(:,1),Frnd,30); title 'shadow plot'; xlabel 'w_1^Tx'; ylabel 'F3';
    figure; surf(X1,X2,reshape(F,10,10));
    colorbar;
elseif n == 7
    s = 1;
    a = 1;
    b = 1;
    [F,G] = func7(X, s, a, b); 
    [Frnd,Grnd] = func7(Xrnd, s, a, b); 
    scatter(Xrnd(:,1), Xrnd(:,2), 30, 'filled', 'cdata', Frnd);
    quiver(Xrnd(:,1), Xrnd(:,2),Grnd(:,1),Grnd(:,2),1);
    %figure;
    contour(X1, X2, reshape(F, 10, 10), 30); hold on;
    quiver(X(:,1), X(:,2),G(:,1),G(:,2),1);
    %tic
    %[W,D] = svd(G',0); toc
    %[W,D] = svd(Grnd'*1/sqrt(Nrnd),0); toc
    % Wrapper implementation -- 
    [W,metric] = SSWrapper(F,X,t);
    % plotting active and inactive directions
    quiver(0,0,W(1,1),W(2,1),'b','linewidth',2);
    quiver(0,0,W(1,2),W(2,2),'r','linewidth',2);
    % projecting into the active subspace
    figure; scatter(Xrnd*W(:,1),Frnd,30); title 'shadow plot'; xlabel 'w_1^Tx'; ylabel 'F3';
    figure; surf(X1,X2,reshape(F,10,10));
    colorbar;
else
    disp("Not a valid option");
end
