clc;

%% 1. ��������
xi = 1:8;
yi = [15.3, 20.5, 27.4, 36.6, 49.1, 65.6, 87.87, 117.6];

%% 2. ����� lny = bx + lna
y = log(yi);

%% 3. ��ϵ��
% % ���ض���ʽϵ��
a = polyfit(xi, y, 1);
% % ���ض���ʽϵ�����
zz = polyval(a, xi);

y_f = exp(a(2)) * exp(a(1)*xi);

%% 4. ���ͼ�񼰽��
plot(xi,yi,'g*',xi, zz, 'r',xi,y_f,'b');
fprintf('b:\t%d\na:\t%d\n', a(1), exp(a(2)));