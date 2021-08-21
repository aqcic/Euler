function [x, y_e, y_i, y_si] = euler(x0, y0, xn, h, f)
x = x0:h:xn;
n = length(x);
y_e = zeros(1,n);
y_e(1) = y0;
for i = 1 : n-1
    y_e(i+1) = y_e(1)+h*f(x(i), y_e(i));
end
y_i = zeros(1,n) + y0;
y_i(1) = y0;
Erreur_i = 1;
while Erreur_i >= 0.001
    E_i = y_i(n);
    for i = 1:n-1
        y_i(i+1) = y_i(i)+h * f(x(i+1), y_i(i+1));
    end
    Erreur_i = abs(E_i - y_i(n));
end
y_si = zeros(1,n)+y0;
y_si(1) = y0;
Erreur_si = 1;
while Erreur_si >= 0.001
    E_si = y_si(n);
    for i = 1:n-1
        y_si(i+1) = y_si(i) +h * (f(x(i),y_si(i)) + f(x(i+1), y_si(i+1)))/2;
    end
    Erreur_si = abs(E_si - y_si(n));
end
end
