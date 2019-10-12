clear all; close all;

qA=-2;
qB=1;
rA=[2,1,0]';
rB=[0,1,0]';
r=[rA rB];

e0=8.85*1e-12;
k = 1/4/pi/e0;
F = k*qA*qB/sqrt(sum((rA-rB).^2));
Fdummy=1;%correction for view
F=Fdummy;%The real F is too huge to be shown, so just leave it
v=rA-rB;
v=v/sqrt(sum(v.^2));
v1=abs(F)*-v;
v2=abs(F)*v; 

plot3(rA(1),rA(2),rA(3),'ro','linewidth',3);
hold on;
plot3(rB(1),rB(2),rB(3),'bo','linewidth',3);
grid;
quiver3(rA(1),rA(2),rA(3),v1(1),v1(2),v1(3),'linewidth',2);
quiver3(rB(1),rB(2),rB(3),v2(1),v2(2),v2(3),'linewidth',2);

title("Coulomb force");
axis([-3 3 -3 3 -3 3]);
