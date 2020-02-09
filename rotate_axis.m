function [X, Y, Z] = rotate_axis(x, y, z, spec_point, angle, axis)
% rotate_axis - 3D rotation of given object around given axis with given angle
% x, y, z - given coordinates of object, which will be rotated
% angle - about how many degrees object will be rotated, given in radians
% spec_point - central point, around which object is rotating
% axis - x-axis is 1 (one), y-axis 2 (two), z-axis 3 (three)
% [X, Y, Z] - coordinates of rotated object
% Mateusz Rzeczyca, AGH University of Science and Technology, 25.01.2020 

x_center = repmat(spec_point(1), size(x, 1), length(x));
y_center = repmat(spec_point(2), size(y, 1), length(y));
z_center = repmat(spec_point(3), size(z, 1), length(z));

x = x - x_center;
y = y - y_center;
z = z - z_center;

switch axis
    case 1
        % x-axis
        X = x;
        Y = y * cos(angle) - z * sin(angle);
        Z = y * sin(angle) + z * cos(angle);
    case 2
        % y-axis
        X = x * cos(angle) + z * sin(angle);
        Y = y;
        Z = z * cos(angle) - x * sin(angle);
    case 3
        % z-axis
        X = x * cos(angle) - y * sin(angle);
        Y = x * sin(angle) + y * cos(angle);
        Z = z;
    otherwise
        error('Wrong axis given!');
end

X = X + x_center;
Y = Y + y_center;
Z = Z + z_center;

end