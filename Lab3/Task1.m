func = @(x) x.^5 + 2 * x.^2 - x + 11;
roots = fzero(func, 0)

start = input('Начало интервала: ');
stop = input('Конец интервала: ');

interval = start:0.05:stop;
figure(1); plot(interval, arrayfun(func, interval), 'color', [0 0.7 0]); title('fn'); hold on;
           plot(roots, arrayfun(func, roots), 'r*'); 
           line(get(gca, 'xlim'), [0 0], 'color', [0 0 0]); 
           line([0 0], get(gca, 'ylim'), 'color', [0 0 0]); grid on;
           text(ceil(stop), 0, 'X'); text(0, ceil(func(stop)), 'Y');
