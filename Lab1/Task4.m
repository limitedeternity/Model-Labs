x = input("cos(x); x = ");
out = fopen("cos.txt", "w");
prev_a = 1.0;
a = (-1) * x^2 / factorial(2);
sum = prev_a + a;
n = 2;

fprintf(out, "Итерация Значение Сумма\n");
fprintf(out, "%d %0.8f %0.8f\n", 0, 1, 1);
fprintf(out, "%d %0.8f %0.8f\n", 1, a, sum);

while abs(a - prev_a) > 10^(-5)
    prev_a = a;
    a = (-1)^n * x^(2 * n) / factorial(2 * n);
    sum = sum + a;
    n = n + 1;
    fprintf(out, "%d %0.8f %0.8f\n", n, a, sum);
end

fprintf("%0.8f\n", sum);
fclose(out);

