func = @(x) Function5(x);
roots = double(solve(func))

prompt = {'Начало графика:','Конец графика:'};
dlgtitle = 'Ввод';
dims = [1 35];
definput = {'0', '2'};
answer = str2double(inputdlg(prompt, dlgtitle, dims, definput));

interval = answer(1):0.05:answer(2);
figure(1); plot(interval, arrayfun(func, interval), 'color', [0 0.7 0]); title('fn'); hold on;
           plot(roots, arrayfun(func, roots), 'r*'); 
           line(get(gca, 'xlim'), [0 0], 'color', [0 0 0]); 
           line([0 0], get(gca, 'ylim'), 'color', [0 0 0]); grid on;
           text(ceil(answer(2)), 0, 'X'); text(0, ceil(func(answer(2))), 'Y');