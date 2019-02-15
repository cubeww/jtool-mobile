/// @func scrObjectButton(x, y, w, h, spr)
/// @desc 绘制对象图标，并检测按下
/// @arg x
/// @arg y
/// @arg w
/// @arg h
/// @arg spr

var xx = argument0;
var yy = argument1;
var ww = argument2;
var hh = argument3;
var spr = argument4;
scrDrawConfig(c_black, 1);
// 绘制外框
draw_rectangle(xx, yy, xx + ww, yy + hh, true);
// 绘制图像
var dx = xx;
var dy = yy;
draw_sprite(spr, 0, dx + sprite_get_xoffset(spr) - sprite_get_width(spr) / 2 + ww / 2,
		dy + sprite_get_yoffset(spr) - sprite_get_height(spr) / 2 + ww / 2);
// 检测按键
return point_in_rectangle(mouse_x, mouse_y, xx + 1, yy + 1, xx + ww - 1, yy + hh - 1) && 
		mouse_check_button_pressed(mb_left);