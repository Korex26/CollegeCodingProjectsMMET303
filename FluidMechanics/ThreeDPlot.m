clc;
clear all;
close all;

[t,y]=ode45('example_problem',[0 500],[1 2 3]);
plot3(y(:,1),y(:,2),y(:,3), 'b-');
