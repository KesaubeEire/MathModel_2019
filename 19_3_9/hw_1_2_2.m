clc;clear;
% ���Թ滮:�ڶ���
% ĳ�����ⰲ�������ƻ���
% ��֪һͰԭ�Ͽɼӹ�10Сʱ������A��Ʒ2���A��Ʒ���Ի���30Ԫ/���
% ���߼ӹ�8Сʱ��������B��Ʒ3���B��Ʒ���Ի���18Ԫ/���
% ���߼ӹ�6Сʱ��������C��Ʒ4���C��Ʒ�ɻ���12Ԫ/���
% ����ÿ��ɹ��ӹ���ԭ��Ϊ60Ͱ���ӹ���ʱ����460Сʱ��
% ��A��Ʒ����ֻ������58���
% Ϊ�˻�����������Ӧ����ΰ��������ƻ���

% 1. ��ʽ��:
% x+y+z <= 60;
% 10x+8y+6z <=460;
% 2x<=58;
% max: 30x+18y+12z;

% 2. д��ʽ
c = [-30,-18,-12];
A = [1,1,1;10,8,6;2,0,0];
b = [60;460;58];
Aeq = [];
beq = [];
vlb = [0,0,0];
vub = [];
% [x, fval] = linprog(c, A, b);
[x, fval] = linprog(c, A, b, Aeq, beq, vlb, vub);

%%%
x
-fval
%%%