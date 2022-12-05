

% calculate deltah

deltah = 10*((8.314 * 22)/(9.81*0.02896))* log(982.9480./pressure);
plot(deltah)

%%%%%



subplot(1,2,1)
x = 1:0.1:47.6;
deltah = 10*((8.314 * 22)/(9.81*0.02896))* log(982.9480./uppre);
plot(x,deltah,'b','LineWidth',1.5)
xlabel('Time in s')
ylabel('Distance travel in m')
axis([0 50 -1 20])
legend('pwards')

subplot(1,2,2)
x1 = 1:0.1:28.9;
deltahdown = 10*((8.314 * 22)/(9.81*0.02896))* log(989.914./down1pre);
plot(x1,deltahdown,'r','LineWidth',1.5)
xlabel('Time in s')
ylabel('Distance travel in m')
axis([0 50 -1 20])
legend('dowards')


###############


accorigindown = down1acc ./ 4096 .* 9.81;
accoriginup = upacc ./ 4096 .* 9.81;

vdown = cumtrapz(x1,accorigindown);
vup = cumtrapz(x,accoriginup);


subplot(1,2,1)
plot(vup,'b','LineWidth',1.5)
xlabel('Time in s')
ylabel('Velocity in m s^-^1')
% axis([0 50 -30 30])
legend('upwards')

subplot(1,2,2)
plot(vdown,'r','LineWidth',1.5)
xlabel('Time in s')
ylabel('Velocity in m s^-^1')
%axis([0 50 -30 30])
legend('dowards')


