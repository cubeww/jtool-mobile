/// @func scrMenuButtonIcon(x, y, w, h, icon)
/// @desc 绘制菜单图标，并检测按下
/// @arg x
/// @arg y
/// @arg w
/// @arg h
/// @arg icon
// 注意：请将精灵设为中心
var xx = argument0;
var yy = argument1;
var ww = argument2;
var hh = argument3;
var icon = argument4;
scrDrawConfig(c_black, 1);
// 绘制外框
draw_rectangle(xx, yy, xx + ww, yy + hh, true);
// 绘制图像
var dx = xx + (ww / 2);
var dy = yy + (hh / 2);
draw_sprite(icon, 0, dx, dy);
// 检测按键
return point_in_rectangle(mouse_x, mouse_y, xx + 1, yy + 1, xx + ww - 1, yy + hh - 1) && 
		mouse_check_button_pressed(mb_left);