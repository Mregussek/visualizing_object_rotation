function [x, y, z] = get_sphere(radius, height, x_center, y_center)
% get_sphere - generates sphere in 3D.
% x_center - center point of cylinder in x-axis
% y_center - center point of cylinder in y-axis
% height - height of sphere on z-axis, this parameter is used for
%           better user experience of visualizing rotation of sphere
% radius - radius of sphere on all x, y and z-axis.
% [x, y, z] - points which are used to visualize sphere using surf
% Mateusz Rzeczyca, AGH University of Science and Technology, 25.01.2020


% Make unit sphere
[x, y, z] = sphere;

% Scale to desire radius.
x = x * radius;
y = y * radius;
z = z * radius * height;

% Translate sphere to new location.
x = x + x_center;
y = y + y_center;

end