S1 = 4.7;
dS1 = 2.0;
S2 = 1.6;
dS2 = 1.6;
S3 = 3.0;
dS3 = 1.5;
S4 = 1.8;
dS4 = 1.0;
S5 = [3.0, 1.0, 2.5, 0.9];
dS5 = 1.6;
n = 10;
A = [S1, S2, S3, S4];
B = [dS1, dS2, dS3, dS4];
for i = 1:n
    V1 = [S1, S2, S3, S4, S5(1)];
    V2 = [S1, S2, S3, S4, S5(2)];
    V3 = [S1, S2, S3, S4, S5(3)];
    V4 = [S1, S2, S3, S4, S5(4)];
    V1 = sort(V1);
    V2 = sort(V2);
    V3 = sort(V3);
    V4 = sort(V4);
    V1 = V1(2:4);
    V2 = V2(2:4);
    V3 = V3(2:4);
    V4 = V4(2:4);
    S1 = mean(V1);
    S2 = mean(V2);
    S3 = mean(V3);
    S4 = mean(V4);
    dS1 = max([S1, S2, S3, S4]) - min([S1, S2, S3, S4]);
    dS2 = max([S1, S2, S3, S4]) - min([S1, S2, S3, S4]);
    dS3 = max([S1, S2, S3, S4]) - min([S1, S2, S3, S4]);
    dS4 = max([S1, S2, S3, S4]) - min([S1, S2, S3, S4]);
    A = [A; S1, S2, S3, S4];
    B = [B; dS1, dS2, dS3, dS4];
end

