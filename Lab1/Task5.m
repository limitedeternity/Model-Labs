A = dlmread("Task5.txt");
i = 0;
cnt = 0;
for e = A
    fprintf("%d %d\n", i, e);
    if mod(i, 4) == 0 && e == 0
        cnt = cnt + 1;
    end
    i = i + 1;
end

fprintf("%d\n", cnt);