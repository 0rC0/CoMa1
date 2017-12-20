function y=exp_approx(x,N)

% Variabeln um die Zwischendaten zu speichern
% es muessen damit 2 Multiplikationen (1 fuer x^i und 1 fuer die Fakultaet / Summanden) gerechnet werden
last_fact = 1;
last_x = 1;
last_f = 1; %ist k = 0 ist f = 1

for i=1:N
    last_fact = i * last_fact;
    last_x = last_x * x;
    last_f = last_f + last_x/last_fact;
end

y = last_f;
end
