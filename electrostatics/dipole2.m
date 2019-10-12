clear all; close all;
q01=2;
q02=-2;
e0=8.85*1e-12;
k=1/(4*pi*e0);
omega=1;

r1=[-2,0]';
r2=[2,0]';
x=-5:5;
y=-5:5;
[X,Y]=meshgrid(x,y);
a1=sqrt((X-r1(1)).^2+(Y-r1(2)).^2);
a2=sqrt((X-r2(1)).^2+(Y-r2(2)).^2);

myVideo = VideoWriter('myVideoFile.avi'); %open video file;
open(myVideo);

for t=linspace(0,2*5*pi,200)
    q1=q01*sin(omega*t);
    q2=q02*sin(omega*t);
    
    E1x=q1*k./a1^3.*(X-r1(1));
    E1y=q1*k./a1^3.*(Y-r1(2));
    E2x=q2*k./a2^3.*(X-r2(1));
    E2y=q2*k./a2^3.*(Y-r2(2));
    Ex=E1x+E2x;
    Ey=E1y+E2y;
    
    cla;
    quiver(X,Y,Ex,Ey);
    hold on;
    if q1>0
        c1='ro';
        c2='bo';
    else
        c1='bo';
        c2='ro';
    end
    plot(r1(1),r1(2),c1,'linewidth',10);
    plot(r2(1),r2(2),c2,'linewidth',10);
    
    drawnow;
    t
    frame = getframe(gcf); %get frame
    writeVideo(myVideo, frame);
end

close(myVideo);

