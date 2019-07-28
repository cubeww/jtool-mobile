/// @desc 绘制出对象预览
if (prev && global.currentObject != -1)
{
	var dx = (mouse_x - global.mapX + global.snapX) div global.snapW * global.snapW + global.mapX;
	var dy = (mouse_y - global.mapY + global.snapY) div global.snapH * global.snapH + global.mapY;
	var dspr = object_get_sprite(global.currentObject);
	// 如果超出编辑区域，不绘制它
	if (dx + sprite_get_bbox_right(dspr) > global.mapX &&
			dx + sprite_get_bbox_left(dspr) < global.mapX + 800 &&
			dy + sprite_get_bbox_bottom(dspr) > global.mapY && 
			dy + sprite_get_bbox_top(dspr) < global.mapY + 608)
	{
		draw_sprite_ext(dspr, 0, dx, dy, 1, 1, 0, c_white, prevAlpha);
	}
}
