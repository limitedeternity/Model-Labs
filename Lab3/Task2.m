syms x y z
eq1 = x + y + 2 * z == -1;
eq2 = 2 * x - y + 2 * z == -4;
eq3 = 4 * x + y + 4 * z == -2;

sol = solve([eq1, eq2, eq3], [x, y, z]);
fprintf('x = %0.5f; y = %0.5f; z = %0.5f\n', sol.x, sol.y, sol.z)
verif = isAlways(subs([eq1, eq2, eq3], sol));
assert(all(verif), 'Решение неверно')