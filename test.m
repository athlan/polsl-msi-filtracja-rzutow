P = zeros(180, 65);
%P = rand([180, 65]);
for i=1:65
    P(1, i) = i;
end

rowNumber = 1;
range = 3;

A = P(rowNumber, :);
FBUF = FiltracjaRzutow(P(rowNumber, :), range);
%P(rowNumber, :) = FBUF;
