[fitToDay sigma residuals] = sineFitter(d(:,1),d(:,2), 1/86400);
G = genSineSeed(d(:,1), 1/86400);
dayFit = G*fitToDay;
[fitToHalfDay sigma2 residuals2] = sineFitter(d(:,1),d(:,2), 2/86400);
H = genSineSeed(d(:,1), 2/86400);
halfDayFit = H*fitToHalfDay;
plot(d(:,1),dayFit,d(:,1),halfDayFit,
  d(:,1),dayFit+halfDayFit-((mean(dayFit)+mean(halfDayFit))/2));
title("Linear Fits to Daily and Twice Daily Frequencies");
xlabel("Time (seconds)");
ylabel("Pressure (mb)");
legend("Daily Pressure","Twice Daily","Sum");

