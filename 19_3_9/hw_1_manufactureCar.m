clc;
clear;
% 造车车
% 2. 写公式
c = [-2, -3, -4];
A = [1.5, 3, 5; 280, 250, 400];
b = [600, 60000];
Aeq = [];
beq = [];
vlb = [0, 0, 0];
vub = [];
% [x, fval] = linprog(c, A, b);
[x, fval] = linprog(c, A, b, Aeq, beq, vlb, vub);

%%%
x
-fval
%%%
fprintf('答案为整数,从如下结果中选最大');
manu(64,167,0)
manu(64,168,0)
manu(65,167,0)
fprintf('最大选项为x1 = 64,x2 = 168,最大结果为632');


function res = manu(x1, x2, x3)
res = 2 * x1 + 3 * x2 + 4 * x3;
end