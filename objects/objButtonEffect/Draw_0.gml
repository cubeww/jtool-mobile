/// @desc 绘制特效
// 检测位置变化
if (xp != x || yp != y)
{
	xp = x;
	yp = y;
	al = 0;
}
// 绘制
scrDrawConfig(c_gray, al)
draw_rectangle(x, y, x + w, y + h, false);

if (al < 0.5)
{
	al += 0.05;
}