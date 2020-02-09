function [x_new, y_new] = rotate_2d(x, y, x_center, y_center, angle)
% rotate_2d - 2D rotation of given object around given point with given angle
% x, y - given coordinates of object, which will be rotated
% x_center, y_center - parameters of point around which object will be rotated
% angle - about how many degrees object will be rotated, given in radians
% [x_new, y_new] - coordinates of rotated object
% Mateusz Rzeczyca, AGH University of Science and Technology, 25.01.2020  

points = [x; y];
center_points = repmat([x_center; y_center], 1, length(x));
A = [cos(angle) -sin(angle); sin(angle) cos(angle)];
new_points = A * (points - center_points) + center_points;
x_new = new_points(1, :);
y_new = new_points(2, :);

end