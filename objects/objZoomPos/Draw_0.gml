/// @desc 绘制放大镜
// 更新位置
drawX += lengthdir_x(point_distance(drawX, drawY, x, y) / 8, 
		point_direction(drawX, drawY, x, y));
drawY += lengthdir_y(point_distance(drawX, drawY, x, y) / 8, 
		point_direction(drawX, drawY, x, y));

draw_sprite_ext(sprite_index, 0, drawX, drawY, 1, 1, 0, c_white, image_alpha);

