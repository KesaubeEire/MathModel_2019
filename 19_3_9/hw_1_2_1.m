% 线性规划:第一题
% s.t. {■(x_1+2x_2≤5@x_1-x_2≤7/2@x_1≥0,x_2≥0)┤
% 1.用图解法求解该线性规划；
x0 = -5:0.1:5;
y1 = 5 - 2 * x0;
y2 = 3.5 + x0;
% x0 > 0
plot(x0, y1, x0, y2);

% 2.用Matlab编程验证
c = [-1, -1];
A = [1, 2; 1, -1];
b = [5; 3.5];
Aeq = [];
beq = [];
vlb = [0, 0];
vub = [];
[x, fval] = linprog(c, A, b, Aeq, beq, vlb, vub);
%%%
x
fval
%%%

% 3.求保持原线性规划最优解的x_2在目标函数中系数的变化范围；


% 4.若增加一个新的约束x_1-3x_2≤0，原规划的最优解还能保持最优吗？如果不能请求出新的最优解。
% 答:不能,见下面的答案
c = [-1, -1];
A = [1, 2; 1, -1;1,-3];
b = [5; 3.5;0];
Aeq = [];
beq = [];
vlb = [0, 0];
vub = [];
[x, fval] = linprog(c, A, b, Aeq, beq, vlb, vub);
%%%
x
fval
%%%