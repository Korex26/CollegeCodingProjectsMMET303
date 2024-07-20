clc;
clear all;
close all;
x=[10 20 30 40 50 60 70 80];
y= [25 70 380 550 610 1220 830 1450];
plot(x,y,'*'); hold on;

a=polyfit(x,y,1);

xx=10:0.1:80;
yy=a(1)*xx+a(2);
plot(xx,yy);