x = [-10:10];
y = arrayfun(@f, x);
plot(x, y);

function y = f(x)
  if x > 0
      y = sqrt(1 + cos(x) / (3 + x));
  else
      y = (1 + x) / (1 + x^2);
  end
end