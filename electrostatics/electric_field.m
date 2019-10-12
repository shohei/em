clear all; close all;

q=2;
r=[[1,0]',[0,1]',[-1,0]',[0,-1]',[1.5,1.5]',[-1.5,1.5]',[-1.5,-1.5]',[1.5,-1.5]'];
r2=arrayfun(@(x,y)x.^2+y.^2,r(1,:),r(2,:))
r1=sqrt(r2);
e0=8.85*1e-12;
E=1/(4*pi*e0)*q./r2./r1.*r;

plot(0,0,'bo');
hold on;
arrayfun(@(x,y)plot(x,y,'ro'),r(1,:),r(2,:));
axis([-2 2 -2 2]);
axis equal;
title('Elecrtic field');
arrayfun(@(x,y,u,v)quiver(x,y,u,v,5e-11,'linewidth',3),r(1,:),r(2,:),E(1,:),E(2,:));