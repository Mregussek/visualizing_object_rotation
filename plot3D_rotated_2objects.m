function plot3D_rotated_2objects(x, y, z, X, Y, Z, spec_point, name)
% plot3D_rotated_2object - function plots 2 3D objects using given parameters.
%   First object is transparent in order to observe rotation.
% x, y, z - parameters of first object
% X, Y, Z - parameters of second object
% name - title of figure
% Mateusz Rzeczyca, AGH University of Science and Technology, 25.01.2020

clf; clc;

surf(x, y, z);
alpha 0.2
hold on; grid on;
axis equal;
surf(X, Y, Z);
xlabel('X-axis');
ylabel('Y-axis');
zlabel('Z-axis');
title(name)
legend('Start', 'Rotated');
scatter3(spec_point(1), spec_point(2), spec_point(3), 'filled');

end