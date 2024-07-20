clc;
clear all;
close all;

M = readmatrix('velocity_data.txt');
z = M(:,1);
U = M(:,2);
plot(U,z,'*'); hold on;
lnz = log(z);
a=polyfit(lnz,U,1);

xx=0.0:0.001:0.5;
yy=a(1)*log(xx)+a(2);
plot(yy,xx);

