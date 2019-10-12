clear all; close all;
% q1=2;
% q2=-2;
e0=8.85*1e-12;
k=1/(4*pi*e0);
q1s=[1,2,3];
q2s=[-3,-2,-1];

x=-5:5;
y=-5:5;
r1=[-2,0]';
r2=[2,0]'
[X,Y]=meshgrid(x,y);
a1=sqrt((X-r1(1)).^2+(Y-r1(2)).^2);
a2=sqrt((X-r2(1)).^2+(Y-r2(2)).^2);

for i1=1:length(q1s)
    for i2=1:length(q2s)
        subplot(length(q1s),length(q2s),3*(i1-1)+i2);
        hold on;
        str=sprintf("q1=%d,q2=%d",q1s(i1),q2s(i2));
        title(str);

        q1=q1s(i1);
        q2=q2s(i2);
        E1x=q1*k./a1^3.*(X-r1(1));
        E1y=q1*k./a1^3.*(Y-r1(2));
        E2x=q2*k./a2^3.*(X-r2(1));
        E2y=q2*k./a2^3.*(Y-r2(2));
        Ex=E1x+E2x;
        Ey=E1y+E2y;
        
        quiver(X,Y,Ex,Ey);
        plot(r1(1),r1(2),'ro','linewidth',10);
        plot(r2(1),r2(2),'ro','linewidth',10);        
    end
end






