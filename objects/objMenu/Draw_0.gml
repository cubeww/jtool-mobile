/// @desc 绘制游戏总菜单
var xx = x;
var yy = y;
var yp = 32;
var iconW = 32;
var iconH = 32;
var i = 0;
scrDrawConfig(c_black, 1, fUI24, fa_left, fa_top);
draw_text(xx, yy, "Menu");
yy += yp + yp / 2;
#region 头按钮
if (scrMenuButtonIcon(xx + yp * i, yy, iconW, iconH, sprMenuFile))
{	
	// 文件操作
	_menuButtonEffect(xx + yp * i, yy, iconW, iconH);
	page = PAGE.MAP;
}
i++;
if (scrMenuButtonIcon(xx + yp * i, yy, iconW, iconH, sprMenuPlayer))
{
	// 玩家设置
	_menuButtonEffect(xx + yp * i, yy, iconW, iconH);
	page = PAGE.PLAYER;
}
i++;
if (scrMenuButtonIcon(xx + yp * i, yy, iconW, iconH, sprMenuMap))
{
	// 地图选项
	_menuButtonEffect(xx + yp * i, yy, iconW, iconH);
	page = PAGE.MAP;
}
i++;
if (scrMenuButtonIcon(xx + yp * i, yy, iconW, iconH, sprMenuAbout))
{
	// 地图选项
	_menuButtonEffect(xx + yp * i, yy, iconW, iconH);
	page = PAGE.ABOUT;
}
#endregion
#region 文件

#endregion 
#region 玩家

#endregion
#region 地图
#endregion
#region 关于
if (page == PAGE.ABOUT)
{
	scrDrawConfig(c_black, 1, fUI12, fa_left, fa_top);
	xx = x;
	yy = y + yy * 2;
	draw_text(xx, yy, "Jtool Mobile v0.1\nBy Cube");
}
#endregion
event_user(0); // 绘制按下特效