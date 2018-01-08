%Setze n und erzeuge Random Data
n = 1000;
a = randi([100,1000],1,n);
b = randi([100,1000],1,n);

%Initializiere Vektoren
kt = zeros(1,n); % vektor k fuer ggT_tumb
ktp = zeros(1,n); %vektor k fuer ggT_tumbpp
ke = zeros(1,n); %vektor k fuer ggT_euclid

%Berechne Werten
for i = 1:n
    [c,kt(i)] = ggT_tumb(a(i),b(i));
    [c,ktp(i)] = ggT_tumbpp(a(i),b(i));
    [c,ke(i)] = ggT_euclid(a(i),b(i));
end

%Erzeuge und speichern Histogramme
ht=bar(kt);
title(strcat('ggT_tumb - kmin=', num2str(min(kt)), ' kmax=', num2str(max(kt))));
ylabel('k')
print('hist_tumb.png','-dpng')

htp=bar(ktp);
title(strcat('ggT tumb++ - kmin=', num2str(min(ktp)), ' kmax=', num2str(max(ktp))));
ylabel('k')
print('hist_tumbpp.png','-dpng')

he=bar(ke);
title(strcat('ggT Euklid - kmin=', num2str(min(ke)), ' kmax=', num2str(max(ke))));
ylabel('k')
print('hist_euklid.png','-dpng')
