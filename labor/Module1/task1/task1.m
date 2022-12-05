plot(x,task13,'r','LineWidth',1.5)
xlabel('Sample number')
ylabel('Pressure in hPa')
axis([0 1000 986.8 987.4])
hold off

taks13mean = mean(task13);
task13std = std(task13);
task1his = task13 - taks13mean;
nbins = 25;
edges = [-0.5 0.5];
h = histogram(task1his,'BinWidth',0.011);



histfit(task1his,6)
xlabel('Pressure without offset in hPa  (n = 1000)')
ylabel('Number of readings')


