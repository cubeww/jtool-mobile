/// @func scrMenuButton(x, y, w, h, icon, str)
/// @desc 绘制菜单图标，后面紧接文字，并检测按下
/// @arg x
/// @arg y
/// @arg w
/// @arg h
/// @arg icon
/// @arg str
// 注意：请将精灵设为中心
var xx = argument0;
var yy = argument1;
var ww = argument2;
var hh = argument3;
var icon = argument4;
var str = argument5;
scrDrawConfig(c_black, 1, fSettings, fa_left,fa_center);
// 绘制外框
draw_rectangle(xx, yy, xx + ww, yy + hh, true);
// 绘制图像
var dx = xx + 16;
var dy = yy + hh / 2;
draw_sprite(icon, 0, dx, dy);
// 绘制文字
draw_text(xx + 32, yy + hh / 2, str);
// 检测按键
if (point_in_rectangle(mouse_x, mouse_y, xx + 1, yy + 1, xx + ww - 1, yy + hh - 1) && mouse_check_button_pressed(mb_left))
{
	mouse_clear(mb_left); // 修复视野双击BUG
	return true;
}
return false;