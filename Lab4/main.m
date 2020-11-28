prompt = {'День рождения (DD/MM/YYYY):', 'Исследуемый месяц (MM):', 'Целевой день (DD):'};
dlgtitle = 'Ввод';
dims = [1 35];
definput = {'07/07/2000', datestr(datetime('now'), 'mm'), datestr(datetime('now'), 'dd')};
answer = inputdlg(prompt, dlgtitle, dims, definput);

dateOfBirth = datetime(answer(1), 'InputFormat', 'dd/MM/yyyy');
startDate = datetime(year(datetime('now')), str2double(answer(2)), 1);
endDate = startDate + days(30);
markDay = days(datetime(year(datetime('now')), str2double(answer(2)), str2double(answer(3))) - dateOfBirth);

interval = days(days(startDate - dateOfBirth):days(1):days(endDate - dateOfBirth));
tickInterval = datestr(startDate:days(1):endDate, 'dd/mm');
yInterval = -1:0.2:1;
yTickInterval = string(0:10:100) + '%';
figure(1); plot(interval, arrayfun(@(x) phys(x), interval), 'color', 'm');  hold on;
           plot(interval, arrayfun(@(x) emot(x), interval), 'color', 'c');
           plot(interval, arrayfun(@(x) intel(x), interval), 'color', 'r');
           line([markDay markDay], [-1 1], 'color', 'black');
           set(gca, 'xtick', interval, 'xticklabel', tickInterval, 'ytick', yInterval, 'yticklabel', yTickInterval, 'FontSize', 14);
           legend('Физ.', 'Эмоц.', 'Интел.', 'Целев. день'); title('Биоритмы'); xtickangle(90); grid on;

function y = phys(x)
    y = sin(2 * pi * x / 23);
end

function y = emot(x)
    y = sin(2 * pi * x / 28);
end

function y = intel(x)
    y = sin(2 * pi * x / 33);
end