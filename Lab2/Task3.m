a1 = diag(3 * ones(1, 5), 1);
a2 = rot90(a1);
a2(6,:) = [ones(1,5) 0];
a3 = rot90(a2, -1);
a3(6,:) = [-2 4 * ones(1,5)];
A = rot90(a3);

s = 0.0;
for i = (1:6)
    for j = (1:6)
        s = s + sin(pi/6 * A(i, j)^2);
    end
end

s