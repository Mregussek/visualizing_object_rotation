function point = gen_specific_point_3D(ranges)
% gen_specific_point - function generates point about which 2D object
% will be rotated.
% <a, b> - specific range for those points on x-axis
% <c, d> - specific range for those points on y-axis
% <e, f> - specific range for those points on z-axis
% point - point which will be returned in specific shape [x, y, z]
% Mateusz Rzeczyca, AGH University of Science and Technology, 25.01.2020

a = ranges(1);
b = ranges(2);
c = ranges(3);
d = ranges(4);
e = ranges(5);
f = ranges(6);

point_x = (b - a) .* rand(1, 1) + a;
point_y = (d - c) .* rand(1, 1) + c;
point_z = (f - e) .* rand(1, 1) + e;

if point_x < a || point_x > b
    error('Generated point isnt in range!'); 
end

if point_y < c || point_y > d
    error('Generated point isnt in range!'); 
end

if point_z < e || point_z > f
    error('Generated point isnt in range!'); 
end

point = [point_x point_y point_z];

end