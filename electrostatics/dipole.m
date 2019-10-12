clear all; close all;
q1=2;
q2=-2;
e0=8.85*1e-12;
k=1/(4*pi*e0);

x=-5:5;
y=-5:5;
r1=[-2,0]';
r2=[2,0]';
[X,Y]=meshgrid(x,y);
a1=sqrt((X-r1(1)).^2+(Y-r1(2)).^2);
a2=sqrt((X-r2(1)).^2+(Y-r2(2)).^2);

E1x=q1*k./a1^3.*(X-r1(1));
E1y=q1*k./a1^3.*(Y-r1(2));
E2x=q2*k./a2^3.*(X-r2(1));
E2y=q2*k./a2^3.*(Y-r2(2));
Ex=E1x+E2x;
Ey=E1y+E2y;

subplot(121);
quiver(X,Y,Ex,Ey);
hold on;
plot(r1(1),r1(2),'ro','linewidth',10);
plot(r2(1),r2(2),'ro','linewidth',10);


x=-50000:5000:50000;
y=-50000:5000:50000;
[X,Y]=meshgrid(x,y);
a1=sqrt((X-r1(1)).^2+(Y-r1(2)).^2);
a2=sqrt((X-r2(1)).^2+(Y-r2(2)).^2);
E1x=q1*k./a1^3.*(X-r1(1));
E1y=q1*k./a1^3.*(Y-r1(2));
E2x=q2*k./a2^3.*(X-r2(1));
E2y=q2*k./a2^3.*(Y-r2(2));
Ex=E1x+E2x;
Ey=E1y+E2y;

subplot(122);
quiver(X,Y,Ex,Ey);
hold on;
plot(r1(1),r1(2),'ro','linewidth',10);
plot(r2(1),r2(2),'ro','linewidth',10);
