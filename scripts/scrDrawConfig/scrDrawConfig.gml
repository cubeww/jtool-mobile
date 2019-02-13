/// @func scrDrawConfig(color, alpha, font, halign, valign)
/// @desc 简化的绘制设定函数
/// @arg color
/// @arg alpha
/// @arg font
/// @arg halign
/// @arg valign
draw_set_color(argument[0]);
draw_set_alpha(argument[1]);
if (argument_count > 2)
{
	draw_set_font(argument[2]);
	draw_set_halign(argument[3]);
	draw_set_valign(argument[4]);
}