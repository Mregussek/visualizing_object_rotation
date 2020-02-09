function plot3D_1object(x, y, z, spec_point)
% plot3D_1object - function plots 1 3D object using given parameters.
% x, y, z - parameters of given object
% Mateusz Rzeczyca, AGH University of Science and Technology, 25.01.2020

surf(x, y, z);
hold on
xlabel('x-axis');
ylabel('y-axis');
zlabel('z-axis');
axis equal;
scatter3(spec_point(1), spec_point(2), spec_point(3), 'filled');

end