fprintf("                    ИСХОДНЫЕ ДАННЫЕ\n");
fprintf("-----------------------------------\n\n");
R = input("                    R = ");
H = input("                    H = ");
fprintf("\n\n");
V = 4/3 * pi * R^3;
S = 4 * pi * R^2;
Vc = pi * H^2 * (R - H/3);
fprintf("          ОТВЕТ:    V = %0.5g     S = %0.5g    Vc = %0.5g\n", V, S, Vc);