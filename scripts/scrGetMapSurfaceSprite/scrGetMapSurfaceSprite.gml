/// @func scrGetMapSurfaceSprite()
/// @desc 绘制出覆盖了网格和背景表面，转换为精灵返回
surf = surface_create(1280, 720);
surface_set_target(surf);

// 绘制背景
gpu_set_blendmode(bm_normal);
scrDrawConfig(c_white, 1);
draw_rectangle(0, 0, 1280, 720, 0);
gpu_set_blendmode(bm_subtract);
draw_rectangle(239, 55, 1040, 664, 0);
gpu_set_blendmode(bm_normal);
// 绘制范围
draw_self();
// 绘制网格
scrDrawConfig(c_black, global.gridAlpha);
for (var xx = x - 1; xx < x + 800; xx += global.gridW)
{
	draw_line(xx, y, xx, y + 608);
}
for (var yy = y - 1; yy < y + 608; yy += global.gridH)
{
	draw_line(x, yy, x + 800, yy);
}

surface_reset_target();

// 将表面转换为精灵
var spr = sprite_create_from_surface(surf, 0, 0, 1280, 720, 0, 0, 0, 0);
surface_free(surf);
return spr;
