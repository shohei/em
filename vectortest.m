clear all; close all;

[X,Y] = meshgrid(-5:5,-5:5);
Z = sqrt(100-X.^2 - Y.^2);
[U,V,W] = surfnorm(X,Y,Z);

quiver3(X,Y,Z,U,V,W,0.5)

axis equal;

%hold on
% surf(X,Y,Z)
% view(-35,45)
% axis([-2 2 -1 1 -.6 .6])
%hold off