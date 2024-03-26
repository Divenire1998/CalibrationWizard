
% 定义 x 的范围
x = linspace(0, 180); % 在 0 到 10 之间生成 1000 个等间距的值

% 计算相应的 y 值
y = ang2cornerness(x)/5e5;

% 绘制 x 和 y 的曲线
plot(x, y);
xlabel('x');
ylabel('y');
title('x 和 y 的变化曲线');
grid on;

function y = ang2cornerness(x)
    y = 1404.50760.*x.^2 - 49.2631560 .* x.^3 + 0.94482.*x.^4 - 0.0093798 .* x.^5 + 0.0000455668.*x.^6 - 8.6160*1e-8.* x.^7;
end

