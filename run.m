function run()
% run - starting function of the whole application
% Mateusz Rzeczyca, AGH University of Science and Technology, 25.01.2020 

disp('Rotating given objects (2D or 3D) around specific point with visualisation');
disp('1. 2D - set of random points');
disp('2. 2D - circle');
disp('3. 2D - triangle');
disp('4. 2D - square');
disp('5. 3D - cylinder');
disp('6. 3D - sphere');
option = input('Choose: ');

switch option
    case 1
        run2d_points();
    case 2
        run2d_circle();
    case 3
        run2d_triangle();
    case 4
        run2d_square();
    case 5
        run3d_cylinder();
    case 6
        run3d_sphere();
    otherwise
        error('You have given wrong option!');
end

end