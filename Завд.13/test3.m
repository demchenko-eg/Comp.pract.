warning off
clc


U = [2 6 2 0 -6;
4 3 3 8 5;
-7 -4 -4 -14 -10;
3 7 5 4 -3;
1 2 7 7 5];

V = [8 -4 28 26 0;
-2 -2 -4 -1 6;
6 6 12 3 -8;
8 2 22 10 8;
2 17 -11 -14 19];

U_V = [2 6 2 0 -6 8 -4 28 26 0;
4 3 3 8 5 -2 -2 -4 -1 6;
-7 -4 -4 -14 -10 6 6 12 3 -8;
3 7 5 4 -3 8 2 22 10 8;
1 2 7 7 5 2 17 -11 -14 19];

[u1, u2] = rref(U);
[v1, v2] = rref(V);
[uv1, uv2] = rref(U_V);
cr = length(u2) + length(v2) - length(uv2);
disp(['dim(U) = ', num2str(length(u2))]);
disp(['dim(V) = ', num2str(length(v2))]);
disp(['dim(U+V) = ', num2str(length(uv2))]);
disp(['dim(U cross V) = ', num2str(cr)]);
