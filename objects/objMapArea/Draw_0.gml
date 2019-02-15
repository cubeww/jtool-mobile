/// @desc 绘制范围和网格
draw_self();

// 绘制网格
scrDrawConfig(c_black, global.gridAlpha);
for (var xx = x - 1; xx < x + 800; xx += 32)
{
	draw_line(xx, y, xx, y + 608);
}
for (var yy = y - 1; yy < y + 608; yy += 32)
{
	draw_line(x, yy, x + 800, yy);
}