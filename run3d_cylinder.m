function run3d_cylinder()
% run3d_cylinder - function runs whole operation of rotating cylinder
% Mateusz Rzeczyca, AGH University of Science and Technology, 25.01.2020 

[xc, yc, r, h, pause_time, ranges] = define_data_3d();
spec_point = gen_specific_point_3D(ranges);

[x, y, z] = get_cylinder(xc, yc, h, r);
[x_start, y_start, z_start] = change_objects_data(x, y, z);
figure;
plot3D_1object(x_start, y_start, z_start, spec_point);

while 1
    disp('1. X-axis rotation with given angle');
    disp('2. Y-axis rotation with given angle');
    disp('3. Z-axis rotation with given angle');
    option = input('Choose what you want to do: ');
    degrees = input('How many degrees: ');
    angle = degrees * pi / 180;
    
    switch option
        case 1
            [X_rotated, Y_rotated, Z_rotated] = rotate_axis(x, y, z, spec_point, angle, 1);
            plot3D_rotated_3objects(x_start, y_start, z_start, ...
                x, y, z, X_rotated, Y_rotated, Z_rotated, spec_point, 'Rotation X-axis point');
            pause(pause_time);
            plot3D_rotated_2objects(x_start, y_start, z_start, X_rotated, Y_rotated, Z_rotated, spec_point, 'Rotation X-axis point');
            [x, y, z] = change_objects_data(X_rotated, Y_rotated, Z_rotated);
        case 2
            [X_rotated, Y_rotated, Z_rotated] = rotate_axis(x, y, z, spec_point, angle, 2);
            plot3D_rotated_3objects(x_start, y_start, z_start, ...
                x, y, z, X_rotated, Y_rotated, Z_rotated, spec_point, 'Rotation Y-axis point');
            pause(pause_time);
            plot3D_rotated_2objects(x_start, y_start, z_start, X_rotated, Y_rotated, Z_rotated, spec_point, 'Rotation Y-axis point');
            [x, y, z] = change_objects_data(X_rotated, Y_rotated, Z_rotated);
        case 3
            [X_rotated, Y_rotated, Z_rotated] = rotate_axis(x, y, z, spec_point, angle, 3);
            plot3D_rotated_3objects(x_start, y_start, z_start, ...
                x, y, z, X_rotated, Y_rotated, Z_rotated, spec_point, 'Rotation Z-axis point');
            pause(pause_time);
            plot3D_rotated_2objects(x_start, y_start, z_start, X_rotated, Y_rotated, Z_rotated, spec_point, 'Rotation Z-axis point');
            [x, y, z] = change_objects_data(X_rotated, Y_rotated, Z_rotated);
        otherwise
            error('You have given wrong option!');
    end
end
end