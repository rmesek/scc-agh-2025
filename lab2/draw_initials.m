DEGREES = -45;

knot_vector_RM = [0 0 0 1 1 2 3 4 4 5 5   6 6 7 7 8 8 9 9 9];
points_RM = [-4 0 -2; -4 0 0; -4 0 0; -4 0 2; 0 0 2; 0 0 0; -4 0 0; 0 0 -2; 0 0 -2;   1 0 2; 1 0 2;  2 0 -2; 2 0 -2; 3 0 2; 3 0 2; 4 0 -2; 4 0 -2];

theta = deg2rad(DEGREES);
rotationMatrix = [cos(theta) -sin(theta) 0; sin(theta) cos(theta) 0; 0 0 1];
points_RM_rot = (rotationMatrix * points_RM')';

bspline_curve3D(1000, knot_vector_RM, points_RM_rot);
axis([-4 4 -4 4 -2 2]);
