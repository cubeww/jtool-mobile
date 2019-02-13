/// @desc 绘制游戏总菜单
var xx = x;
var yy = y;
var yp = 32;
var iconW = 32;
var iconH = 32;
var i = 0;
var editX = 191;
scrDrawConfig(c_black, 1, fUI24, fa_left, fa_top);
draw_text(xx, yy, "Menu");
yy = 56;
#region 头按钮
if (scrMenuButtonIcon(xx + yp * i, yy, iconW, iconH, sprMenuFile))
{	
	// 文件操作
	_menuButtonEffect(xx + yp * i, yy, iconW, iconH);
	page = PAGE.FILE;
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
if (page == PAGE.FILE)
{
	yy = 56 + yp + 32;
	scrDrawConfig(c_black, 1, fSettings, fa_left, fa_top);
	if (scrMenuButton(xx, yy, 176, 48, sprMenuEdit, "Map Name"))
	{
		// 地图改名
		global.mapName = get_string("Map Name", global.mapName);
	}
	
	yy += yp * 2;
	if (scrMenuButton(xx, yy, 176, 48, sprMenuOpen, "Open JMap"))
	{
		// 打开地图
	}
	
	yy += yp * 2;
	if (scrMenuButton(xx, yy, 176, 48, sprMenuSave, "Save JMap"))
	{
		// 保存地图
	}

}
#endregion 
#region 玩家

#endregion
#region 地图
#endregion
#region 关于
if (page == PAGE.ABOUT)
{
	yy = 56 + yp + 32;
	scrDrawConfig(c_black, 1, fBold, fa_left, fa_top);
	xx = x;
	draw_text(xx, yy, "Jtool Mobile \n            v0.15\nBy Cube");
}
#endregion
event_user(0); // 绘制按下特效