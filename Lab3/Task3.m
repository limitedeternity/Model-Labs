x = 1:0.05:3;
A = arrayfun(@Function3, x);
TF1 = islocalmax(A);
TF2 = islocalmin(A);

if all(TF2(:) == 0)
    [M,I] = min(A);
    TF2(I) = 1;
end

if all(TF1(:) == 0)
    [M,I] = max(A);
    TF2(I) = 1;
end

fprintf('Минимум: %0.5f; Максимум: %0.5f\n', A(TF2), A(TF1))

figure(1); plot(x, A, 'color', [0 0.7 0]); title('fn'); hold on; 
           plot(x(TF1), A(TF1), 'm*');
           plot(x(TF2), A(TF2), 'r*');
           line(get(gca, 'xlim'), [0 0], 'color', [0 0 0]); 
           line([0 0], get(gca, 'ylim'), 'color', [0 0 0]); grid on;
           text(x(end), 0, 'X'); text(0, ceil(Function3(x(end))), 'Y');