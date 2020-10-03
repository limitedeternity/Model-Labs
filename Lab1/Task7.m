A = readmatrix("Task7.txt");

in = fopen("in.txt", "w");
out = fopen("out.txt", "w");

fprintf(in, "ИСХОДНАЯ МАТРИЦА:\n");
fprintf(out, "ПРЕОБРАЗОВАННАЯ МАТРИЦА:\n");

for i=1:size(A)
    submatrix = A(i,:);
    sum = 0;
    for j=1:numel(submatrix)
        fprintf(in, "%d ", submatrix(:,j));
        sum = sum + submatrix(:,j);
    end
    for j=1:numel(submatrix)-2
        fprintf(out, "%d ", submatrix(:,j));
    end
    fprintf(out, "%d %d", sum, submatrix(:,numel(submatrix)));
    fprintf(in, "\n");
    fprintf(out, "\n");
end

fclose(in);
fclose(out);