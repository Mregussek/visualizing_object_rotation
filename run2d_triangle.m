function run2d_triangle()
% run2d_triangle - function runs whole operation of rotating triangle
% Mateusz Rzeczyca, AGH University of Science and Technology, 25.01.2020 

[a, b, c, d, pause_time] = define_data();

% Generate point around which it will be rotated
spec_point = gen_specific_point(a, b, c, d);
x_spec = spec_point(1);
y_spec = spec_point(2);

% Generate triangle
x_start_end = 1;
y_start_end = 1.5;
x1 = rand(1,1) + 1;
x2 = rand(1,1) + 3;
y1 = rand(1,1) - 0.5;
y2 = rand(1,1) + 2;
x = [x_start_end, x1, x2, x_start_end];
y = [y_start_end, y1, y2, y_start_end];

% Plot triangle and main point
figure;
hold on;
grid on;
plot(x, y);
axis equal;
plot(x_spec, y_spec, 'rx', 'MarkerSize', 20, 'LineWidth', 1);

% Ask for input
degrees = input('How many degrees: ');
angle = degrees * pi / 180;

% Calculate Rotation
[xr_new, yr_new] = rotate_2d(x, y, x_spec, y_spec, angle);

% Plot rotated element
pause(pause_time);
plot(xr_new, yr_new, 'g-');
fill(x, y, 'b');
fill(xr_new, yr_new, 'g');
legend('Given Data Randomly Generated', 'Specific Point',' Rotated Data')

end