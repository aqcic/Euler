clear all
clc
clf
x0 = 0;
y0= 2;
xn= 10.14;
h=0.25;
f= @(x,y) cos(x)/y;
[x, y_e, y_i, y_si] = euler(x0, y0, xn, h, f)
plot(x,y_e, 'g+', x, y_i, '+', x, y_si, 'r+', 'Linewidth', 2);
sol_Exacte = sqrt(2*(sin(x)+ 2));
hold on , plot(x,sol_Exacte, 'k', 'LineWidth', 2);