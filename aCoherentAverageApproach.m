importUWAtmosData

%See function :)
r = simpleCoherentAverage(d(:,1), d(:,2), 86400, 60);

plot(r(:,1), r(:,2),'.')
xlabel('time (s, mod 86400s)');
ylabel('coherently averaged pressure (mb)');
title('What time of day has the highest pressure?');

%Also interesting: errorbar(r(:,1), r(:,2),r(:,4)./sqrt(r(:,5)))
