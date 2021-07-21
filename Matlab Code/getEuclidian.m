function dist = getEuclidian(A,B)

diff = A - B;
sum = 0;
for column = 1:20
    sum = sum+(diff(1, column))^2;
dist = sqrt(sum);

end