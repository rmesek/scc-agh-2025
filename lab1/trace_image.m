my_image = imread("Reisealbum_Ottheinrich_Krakau_1537.jpg");
[image_height, image_width, ~] = size(my_image);

knot_vector  = [105, 105, 105, 374, 374, 493, 493, 551, 551, 756, 756, 840, 840, 874, 874, 1006, 1006, 1030, 1030, 1070, 1070, 1226, 1226, 1310, 1310, 1419, 1419, 1556, 1556, 1820, 1820, 1820];
coefficients = [440, 420, 490, 465, 455, 460, 470, 460, 430, 440, 440, 440, 440, 460,  460,  460,  460,  460,  450,  450,  475,  470,  460,  460,  480,  460,  445,  445,  445];
precision    = 1715;

lower_bound = 1.0;
upper_bound = 1.1;
random_scales = lower_bound + (upper_bound - lower_bound) * rand(size(coefficients));
reflection_coefficients = (image_height - coefficients) .* random_scales;

hold on;
imshow(my_image);
splines_comp(precision, knot_vector, coefficients);
splines_comp(precision, knot_vector, reflection_coefficients);
hold off;