/// @func scrDestroyIfOutRange()
/// @desc 摧毁实例如果超出摆放区域
var spr = sprite_index;

var left = bbox_left;
var right = bbox_right;
var top = bbox_top;
var bottom = bbox_bottom;

// 当超出范围时摧毁
if (right < global.mapX || left > global.mapX + 800 ||
		bottom < global.mapY || top > global.mapY + 608)
{
	instance_destroy();
}