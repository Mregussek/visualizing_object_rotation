function points = gen_points(n, a, b, c, d)
% gen_points - function generates specific amount of points. It is used
% in run2d_points function for visualization of points rotation.
% n - number of points to generate
% <a, b> - specific range for those points on x-axis
% <c, d> - specific range for those points on y-axis
% points - points which will be returned in one column like [x, y]
% Mateusz Rzeczyca, AGH University of Science and Technology, 25.01.2020

points_x = (b - a) .* rand(1, n) + a;
points_y = (d - c) .* rand(1, n) + c;

points_range_ab = [min(points_x) max(points_x)];
points_range_cd = [min(points_y) max(points_y)];


if points_range_ab(1) < a || points_range_ab(2) > b
    error('Generated points for x-axis isnt in range!'); 
end

if points_range_cd(1) < c || points_range_cd(2) > d
    error('Generated points for y-axis isnt in range!'); 
end

points = [points_x ;points_y];

end
