clear all;
close all;
clc;
syms s
syms t
%case 2
v=3.5;          % enter velocity here
I=eye(4);
C=[1,0,0,0];
A=[0,0,1,0;0,0,0,1;13.67,0.225-(1.319*(v^2)),-0.164*v,-0.552*v;4.857,10.81-(1.125*(v^2)),3.621*v,-2.388*v];
B=[0;0;-0.339;7.457];
D=s*I-A;
R=C*inv(D)*B;
T=(-0.339*s^2-4.926*v*s+5.342-10.217*v^2)/(s^4+2.552*v*s^3+(3.515*v^2-24.48)*s^2+(4.961*v^3-32.55*v)*s+146.68-8.972*v^2);
Y=T/s;
y2=ilaplace(Y);
fplot(y2,[0,20]);
xlabel('time');
ylabel('output');
title('unit step response');