Ro = [1300 900 800 700 600 500 400 300 200]; %dotās slodzes pretestības
Uv = [380 300 285 270 250 225 200 170 130]*1e-3; %nomērītie slodzes spriegumi

R = min(Ro):0.01:max(Ro); %izveidojam daudz punktu ar noteiktu soli Ro diapazonā, lai iegūtu precizitāti
C = polyfit(Ro, Uv, 1); %izrēķina polinoma koeficientus
U = polyval(C, R); %pielāgo C katram R, attiecīgi izveido raksturlīkni
plot(Ro,Uv,'k*',R,U) %attēlo nomērītos punktus un izveidoto raksturlīkni
xlabel('R, \Omega') %nosauc x asi
ylabel('U, V') %nosauc y asi
title('Slodzes sprieguma atkarība no pretestības') %nosauc grafiku
grid on %ieslēdz režģi
