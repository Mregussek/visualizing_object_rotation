function plot3D_rotated_3objects(x_start, y_start, z_start, ...
                    x_temp, y_temp, z_temp, ...
                    X_rotated, Y_rotated, Z_rotated,...
                    spec_point, name)        
% plot3D_rotated_3objects - function plots 3 3D objects using given parameters.
%    First object is transparent in order to observe how starting figure looks 
%    like comparing to new ones. Second figure is half transparent.
% x_start, y_start, z_start - parameters of first object, which is starting one
% x_temp, y_temp, z_temp - parameters of second object, which is temporary
%                       just for visualizing rotation
% X_rotated, Y_rotated, Z_rotated - parameters of third object, which is
%                                going to be the new rotated one.
% name - title of figure
% Mateusz Rzeczyca, AGH University of Science and Technology, 25.01.2020             

clf; clc;

surf(x_start, y_start, z_start);
alpha 0.2
hold on; grid on;
axis equal;
surf(x_temp, y_temp, z_temp);
alpha 0.5
surf(X_rotated, Y_rotated, Z_rotated);
xlabel('X-axis');
ylabel('Y-axis');
zlabel('Z-axis');
title(name)
legend('Start', 'Rotated');
scatter3(spec_point(1), spec_point(2), spec_point(3), 'filled');

end