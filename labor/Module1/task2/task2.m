
% convert raw data to acceleration 

x = xraw / 4096 *9.81;
y = yraw / 4096 *9.81;
z = zraw / 4096 *9.81;

% plot acceleration in all 3 directions

plot(x,'r','LineWidth',1.5)
hold on
plot(y,'g','LineWidth',1.5)
hold on
plot(z,'b','LineWidth',1.5)
xlabel('Sample number')
ylabel('Acceleration in m s^-2')
legend('x-direction','y-direction','z-direction')

% calculate mean value/ offset

xmean = mean(x);
ymean = mean(y);
zmean = mean(z);

% raw data - mean/offset

xvar = x - xmean;
yvar = y - ymean;
zvar = z - zmean;

% histogram

subplot(3,1,1);
histfit(xvar,8)
xlabel('acceleration in x-direction without offset in m s^-^2  (n = 1000)')
ylabel('Number of readings')
legend("X-direction")
%axis([-0.4 0.2 0 700]);

subplot(3,1,2);
histfit(yvar,8)
xlabel('acceleration in y-direction without offset in m s^-^2  (n = 1000)')
ylabel('Number of readings')
legend("Y-direction")
%axis([-0.4 0.2 0 700]);

subplot(3,1,3);
histfit(zvar,8)
xlabel('acceleration in z-direction without offset in m s^-^2  (n = 1000)')
ylabel('Number of readings')
legend("Z-direction")
%axis([-0.4 0.2 0 700]);
