range = 3;
P = zeros(180, 65); % here image shoule be loaded

for i=1:65 %test data
    P(1, i) = i;
end

P_rows = size(P, 1);

for rowNumber = 1:P_rows,
    FBUF = FiltracjaRzutow(P(rowNumber, :), range);
    P(rowNumber, :) = FBUF;
end;
