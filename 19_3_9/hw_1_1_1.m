clc;

%% 1. 输入数据
xi = 1:8;
yi = [15.3, 20.5, 27.4, 36.6, 49.1, 65.6, 87.87, 117.6];

%% 2. 求对数 lny = bx + lna
y = log(yi);

%% 3. 求系数
% % 返回多项式系数
a = polyfit(xi, y, 1);
% % 返回多项式系数结果
zz = polyval(a, xi);

y_f = exp(a(2)) * exp(a(1)*xi);

%% 4. 输出图像及结果
plot(xi,yi,'g*',xi, zz, 'r',xi,y_f,'b');
fprintf('b:\t%d\na:\t%d\n', a(1), exp(a(2)));