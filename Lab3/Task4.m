I = integral(@(x) Function4(x), 0.4, 1.2)

start = input('Начало интервала: ');
stop = input('Конец интервала: ');

plotx = start:0.05:stop;
integralx = 0.4:0.05:1.2;
figure(1); plot(plotx, arrayfun(@Function4, plotx), 'color', [0 0.7 0]); title('fn'); hold on;
           area(integralx, arrayfun(@Function4, integralx));
           line(get(gca, 'xlim'), [0 0], 'color', [0 0 0]); 
           line([0 0], get(gca, 'ylim'), 'color', [0 0 0]); grid on;
           text(ceil(stop), 0, 'X'); text(0, ceil(Function4(stop)), 'Y');