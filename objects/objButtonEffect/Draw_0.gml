/// @desc 绘制特效
scrDrawConfig(c_gray, al)
draw_rectangle(x, y, x + w, y + h, false);

if (al < 0.5)
{
	al += 0.05;
}