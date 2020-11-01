for i = (-1.0:1/7:-1/7)
    fprintf('f(%0.5f) = %0.5f\n', i, f(i));
end

function y = f(x)
  y = cot(x^2 + 1) * (sin(2 * x) + cos(2 * x));
end