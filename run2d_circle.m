function run2d_circle()
% run2d_circle - function runs whole operation of rotating circle
% Mateusz Rzeczyca, AGH University of Science and Technology, 25.01.2020 

[a, b, c, d, pause_time] = define_data();

% Generate point around which it will be rotated
spec_point = gen_specific_point(a, b, c, d);
x_spec = spec_point(1);
y_spec = spec_point(2);

% Generate circle
th = 0:pi/50:2*pi;
xr_center = 2; % Center of circle on x-axis
yr_center = 2; % Center of circle on y-axis
r = 0.5; % radius of circle
xunit = r * cos(th) + xr_center;
yunit = r * sin(th) + yr_center;

% Plot circle
figure()
hold on;
grid on; 
plot(xunit, yunit);
axis equal;
plot(x_spec, y_spec, 'rx', 'MarkerSize', 20, 'LineWidth', 1);

% Ask for input
degrees = input('How many degrees: ');
angle = degrees * pi / 180;

% Calculating Rotation
[xr_new, yr_new] = rotate_2d(xunit, yunit, x_spec, y_spec, angle);

pause(pause_time);
plot(xr_new, yr_new, 'g-');
fill(xunit, yunit, 'b');
fill(xr_new, yr_new, 'g');
legend('Given Data Randomly Generated', 'Specific Point',' Rotated Data')

end