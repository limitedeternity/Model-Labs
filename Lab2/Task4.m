figure(1); plot(-1:0.05:1, asin(-1:0.05:1), 'color', [0 0.7 0]); title('asin'); grid on;
figure(2); plot(-1:0.05:1, acos(-1:0.05:1), 'color', [0 0.7 0]); title('acos'); grid on;

figure(3); plot(-1:0.05:1, asin(-1:0.05:1), 'color', [0 0.7 0]); title('composed'); hold on;
           plot(-1:0.05:1, acos(-1:0.05:1), 'color', [0.7 0 0]); grid on; legend('asin(x)', 'acos(x)');

figure(4); plot(-1:0.05:1, asin(-1:0.05:1), 'color', [0 0.7 0]); yyaxis left; title('composed'); hold on;
           plot(-1:0.05:1, acos(-1:0.05:1), 'color', [0.7 0 0]); yyaxis right; grid on; legend('asin(x)', 'acos(x)');

figure(5); plot(-2:0.05:1, arrayfun(@(x) (x-1)^2, -2:0.05:1)); title('partial fn'); hold on;
           plot(1.05:0.05:3, arrayfun(@(x) cos(pi/2) * x, 1.05:0.05:3)); hold on;
           plot(3.05:0.05:8, arrayfun(@(x) 1 - exp(1)^(3 - x), 3.05:0.05:8)); grid on; legend('f(x)');