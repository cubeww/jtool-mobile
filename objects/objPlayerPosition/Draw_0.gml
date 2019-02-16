/// @desc 玩家位置信息绘制
scrDrawConfig(c_black, 1, fSettings, fa_left, fa_top);
if (instance_exists(objPlayer))
{
	px = objPlayer.x - global.mapX;
	py = objPlayer.y - global.mapY;
}
else
{
	px = 0;
	py = 0;
}
draw_text(x, y,
		"Player X: " + string(px) + "\nPlayer Y: " + string(py) + "\nAlign: " + string(px mod 3));
