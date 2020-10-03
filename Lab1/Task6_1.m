x = [];
y = [];
i = 0;
for e = -10:10
    x = [x(1:i),e];
    y = [y(1:i),f(e)];
    i = i + 1;
end
plot(x, y);
function y = f(x)
  if x > 0
      y = sqrt(1 + cos(x) / (3 + x));
  else
      y = (1 + x) / (1 + x^2);
  end
end