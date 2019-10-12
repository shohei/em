clear all; close all;

I=1;
x=-5:5;
y=-5:5;
z=-5:5;
[X,Y,Z]=meshgrid(x,y,z);
Hx=-I/(2*pi)*Y./(X.^2+Y.^2);
Hy=I/(2*pi)*X./(X.^2+Y.^2);
Hz=0*X;
plot3([0,0],[0,0],[z(1),z(end)],'r-','linewidth',5);
hold on;
quiver3(X,Y,Z,Hx,Hy,Hz,'b');

