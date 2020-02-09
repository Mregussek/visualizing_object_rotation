function run2d_square()
% run2d_square - function runs whole operation of rotating square
% Mateusz Rzeczyca, AGH University of Science and Technology, 25.01.2020 

[a, b, c, d, pause_time] = define_data(); 

% Generate point around which it will be rotated
spec_point = gen_specific_point(a, b, c, d);
x_spec = spec_point(1);
y_spec = spec_point(2);

% Generate square
% Square is generated like:
%   [x1, y2] --- [x2, y2]
%       |           |
%       |           |
%   [x1, y1] --- [x2, y1]
x1 = 2;
x2 = 3;
y1 = x1;
y2 = x2;
x = [x1, x2, x2, x1, x1];
y = [y1, y1, y2, y2, y1];

% Plot square
figure;
hold on;
grid on;
plot(x, y, 'b-'); 
axis equal;
plot(x_spec, y_spec, 'rx', 'MarkerSize', 20, 'LineWidth', 1);

% Ask for input
degrees = input('How many degrees: ');
angle = degrees * pi / 180;

% Calculate Rotated Circle
[xr_new, yr_new] = rotate_2d(x, y, x_spec, y_spec, angle);

% Plot rotated figure
pause(pause_time);
plot(xr_new, yr_new, 'g-');
fill(x, y, 'b');
fill(xr_new, yr_new, 'g');
legend('Given Data Randomly Generated', 'Specific Point',' Rotated Data')

end