clc;
clear;
% �쳵��
% 2. д��ʽ
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
fprintf('��Ϊ����,�����½����ѡ���');
manu(64,167,0)
manu(64,168,0)
manu(65,167,0)
fprintf('���ѡ��Ϊx1 = 64,x2 = 168,�����Ϊ632');


function res = manu(x1, x2, x3)
res = 2 * x1 + 3 * x2 + 4 * x3;
end