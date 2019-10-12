clear all; close all;

q=2;
x=-10:10;
y=-10:10;
[X,Y]=meshgrid(x,y);
Z=sqrt(100-X.^2-Y.^2);
Ex=100*X./(X.^2+Y.^2+Z.^2).^(3/2);
Ey=100*Y./(X.^2+Y.^2+Z.^2).^(3/2);
Ez=100*Z./(X.^2+Y.^2+Z.^2).^(3/2);
Ex(isnan(Ex))=0;
Ey(isnan(Ey))=0;
Ez(isnan(Ez))=0;
quiver3(X,Y,Z,Ex,Ey,Ez);


