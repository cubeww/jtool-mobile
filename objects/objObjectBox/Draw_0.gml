/// @desc 绘制对象盒子
var xx = x;
var yy = y;
var yp = 32;
var iconW = 32;
var iconH = 32;
var i = 0;
var editX = 191;
scrDrawConfig(c_black, 1, fUI24, fa_left, fa_top);
draw_text(xx, yy, "Object");
yy = 56;
#region 头按钮
if (scrMenuButtonIcon(xx + yp * i, yy, iconW, iconH, sprMenuWorld))
{	
	// 世界
	_menuButtonEffect(xx + yp * i, yy, iconW, iconH);
	page = PAGE.WORLD;
}
i++;
if (scrMenuButtonIcon(xx + yp * i, yy, iconW, iconH, sprMenuBlock))
{
	// 砖
	_menuButtonEffect(xx + yp * i, yy, iconW, iconH);
	page = PAGE.BLOCK;
}
i++;
if (scrMenuButtonIcon(xx + yp * i, yy, iconW, iconH, sprMenuKiller))
{
	// 杀人
	_menuButtonEffect(xx + yp * i, yy, iconW, iconH);
	page = PAGE.KILLER;
}
i++;
if (scrMenuButtonIcon(xx + yp * i, yy, iconW, iconH, sprMenuMisc))
{
	// 其它
	_menuButtonEffect(xx + yp * i, yy, iconW, iconH);
	page = PAGE.MISC;
}
#endregion

event_user(0);