clear all; close all;

I=1;
a=1;
theta=linspace(0,2*pi,10);
x1=a*cos(theta);
y1=a*sin(theta);
z1=0*theta;

x=-3:3;
y=-3:3;
z=-100:100;
[X,Y,Z]=meshgrid(x,y,z);
Hx=X*0;
Hy=Y*0;
Hz=1/2*(a^2+Z.^2).^(3/2)*a^2;
plot3(x1,y1,z1);
hold on;

quiver3(X,Y,Z,Hx,Hy,Hz);

