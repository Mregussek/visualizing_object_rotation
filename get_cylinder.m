function [x, y, z] = get_cylinder(center_x, center_y, height, radius)
% get_cylinder - generates cylinder in 3D.
% center_x - center point of cylinder in x-axis
% center_y - center point of cylinder in y-axis
% height - height of cylinder on z-axis
% radius - radius of cylinder on x-axis and y-axis
% [x, y, z] - points which are used to visualize cylinder using surf
% Mateusz Rzeczyca, AGH University of Science and Technology, 25.01.2020
  
th = 0:pi/100:2*pi;
a = radius * cos(th);
b = radius * sin(th);
x = [a; a] + center_x;
y = [b; b] + center_y;
z = [ones(1, size(th, 2)); zeros(1, size(th, 2))] * height;
  
end