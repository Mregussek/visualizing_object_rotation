function point = gen_specific_point(a, b, c, d)
% gen_specific_point - function generates point about which 2D object
% will be rotated.
% <a, b> - specific range for those points on x-axis
% <c, d> - specific range for those points on y-axis
% point - point which will be returned in specific shape [x, y]
% Mateusz Rzeczyca, AGH University of Science and Technology, 25.01.2020

point_x = (b - a) .* rand(1, 1) + a;
point_y = (d - c) .* rand(1, 1) + c;

if point_x < a || point_x > b
    error('Generated point isnt in range!'); 
end

if point_y < c || point_y > d
    error('Generated point isnt in range!'); 
end

point = [point_x point_y];

end