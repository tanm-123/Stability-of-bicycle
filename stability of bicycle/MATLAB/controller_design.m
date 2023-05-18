clear all;
close all;
clc;
%case 2
v=3.5;
% I=eye(4);
% C=[1,0,0,0];
% A=[0,0,1,0;0,0,0,1;13.67,0.225-(1.319*(v^2)),-0.164*v,-0.552*v;4.857,10.81-(1.125*(v^2)),3.621*v,-2.388*v];
% B=[0;0;-0.339;7.457];
% D=s*I-A;
% R=C*inv(D)*B;
T=tf([-0.339 -4.926*v 5.342-10.217*v^2],[1 2.552*v 3.515*v^2-24.48 4.961*v^3-32.55*v 146.68-8.972*v^2]);
sisotool(T)

% here after running this code a tool will open up where we will import our
% transfer function and obtain the desired specifications.