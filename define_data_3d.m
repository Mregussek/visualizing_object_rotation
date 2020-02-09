function [xc, yc, r, h, pause_time, ranges] = define_data_3d()
% define_data - function is used in order to specify center points of 3D
% object, radius and his height.
% xc, yc - center points of object
% r - radius of object on x-axis and y-axis
% h - height of object on z-axis
% pause_time - given in seconds [s]
% ranges - helper for specific point around which object will rotate
% Mateusz Rzeczyca, AGH University of Science and Technology, 25.01.2020

pause_time = 1.5;
xc = 1;
yc = 1;
r = 1;
h = 2;

a = 0;
b = 0;
c = 0;
d = 0;
e = 0;
f = 0;

ranges = [a, b, c, d, e, f];

end