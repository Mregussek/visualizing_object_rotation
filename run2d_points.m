function run2d_points()
% run2d_points - function runs whole operation of rotating points
% Mateusz Rzeczyca, AGH University of Science and Technology, 25.01.2020 

n = 3; % How many points need to be generated
[a, b, c, d, pause_time] = define_data(); 

% From given data we can get main point and the rest
points = gen_points(n, a, b, c, d);
spec_point = gen_specific_point(a, b, c, d);

% Parse data to get it in good form in case of correct calculation
x_p = points(1, :);
y_p = points(2, :);
x_spec = spec_point(1);
y_spec = spec_point(2);

% Plotting data to check if it is really rotated
figure()
hold on;
grid on; 
plot(x_p, y_p, 'bx', 'LineWidth', 3);
axis equal;
plot(x_spec, y_spec, 'rx', 'MarkerSize', 20, 'LineWidth', 1);

% Ask for input
degrees = input('How many degrees: ');
angle = degrees * pi / 180;

% Calculating Rotation
[x_new, y_new] = rotate_2d(x_p, y_p, x_spec, y_spec, angle);

% Plot new points
pause(pause_time);
plot(x_new, y_new, 'gx', 'LineWidth', 3);
legend('Given Data Randomly Generated', 'Specific Point',' Rotated Data')


end