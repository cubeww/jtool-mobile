/// @desc 绘制游戏总菜单
var xs = x;		// 起始的按钮X
var iys = 56;	// 起始的头按钮Y
var ys = 120;	// 起始的按钮Y
var xx = xs;	// 当前的X
var yy = iys;	// 当前的Y
var xb = 48;	// 头按钮的横向间隔
var yb = 48;	// 按钮的上下间隔
var iconW = 48;	// 头按钮的宽度
var iconH = 48;	// 头按钮的高度
var bw = 192;	// 按钮的宽度
var bh = 48;	// 按钮的高度
scrDrawConfig(c_black, 1, fUI24, fa_left, fa_top);
draw_text(x, y, "Menu");

#region 头按钮
var i = 0;
if (scrMenuButtonIcon(xx + xb * i, yy, iconW, iconH, sprMenuFile))
{	
	// 文件操作
	page = PAGE_FILE;
	ef.x = xx + xb * i;
}
i++;
if (scrMenuButtonIcon(xx + xb * i, yy, iconW, iconH, sprMenuPlayer))
{
	// 玩家设置
	page = PAGE_PLAYER;
	ef.x = xx + xb * i;
}
i++;
if (scrMenuButtonIcon(xx + xb * i, yy, iconW, iconH, sprMenuMap))
{
	// 地图选项
	page = PAGE_MAP;
	ef.x = xx + xb * i;
}
i++;
if (scrMenuButtonIcon(xx + xb * i, yy, iconW, iconH, sprMenuAbout))
{
	// 地图选项
	page = PAGE_ABOUT;
	ef.x = xx + xb * i;
}
#endregion
#region 文件
if (page == PAGE_FILE)
{
	yy = ys;
	scrDrawConfig(c_black, 1, fSettings, fa_left, fa_top);
	if (scrMenuButton(xx, yy, bw, bh, sprMenuEdit, "Map Name"))
	{
		// 地图改名
		global.mapName = get_string("Map Name", global.mapName);
	}
	
	yy += yb;
	if (scrMenuButton(xx, yy, bw, bh, sprMenuOpen, "Import Map"))
	{
		// 打开地图
		scrImportMap();
	}
	
	yy += yb;
	if (scrMenuButton(xx, yy, bw, bh, sprMenuSave, "Export Map"))
	{
		// 保存地图
		scrExportMap();
	}

}
#endregion 
#region 玩家
if (page == PAGE_PLAYER)
{
	yy = ys;
	scrDrawConfig(c_black, 1, fSettings, fa_left, fa_top);
	if (scrMenuButton(xx, yy, bw, bh, sprMenuDeath, "Death: " + (global.canDeath ? "On" : "Off")))
	{
		// 开启死亡模式
		global.canDeath = !global.canDeath;
	}
	
	yy += yb;
	if (scrMenuButton(xx, yy, bw, bh, sprMenuDotkid, "Dotkid: " + (global.dotkid == 0 ? "Off" : (global.dotkid == 1 ? "On" : "Outline"))))
	{
		// 点KID
		if (global.dotkid < 2) global.dotkid++;
		else global.dotkid = 0;
		with (objPlayer) event_perform(ev_create, 0);
		
	}
	
	yy += yb;
	if (scrMenuButton(xx, yy, bw, bh, sprMenuInfjump, "Infjump: " + (global.infjump ? "On" : "Off")))
	{
		// 无限跳跃
		global.infjump = !global.infjump;
	}
	yy += yb;
	if (scrMenuButton(xx, yy, bw, bh, sprMenuHitbox, "Hitbox: " + (global.showhitbox == 0 ? "Player" : (global.showhitbox == 1 ? "Both" : "Hitbox"))))
	{
		// 碰撞盒子
		if (global.showhitbox < 2) global.showhitbox++;
		else global.showhitbox = 0;
	}
	yy += yb;
	if (scrMenuButton(xx, yy, bw, bh, sprMenuSavetype, "Savetype: " + (global.savetype ? "Touch" : "Shoot")))
	{
		// 存档类型
		global.savetype = !global.savetype;
	}
}
#endregion
#region 地图
if (page == PAGE_MAP)
{
	yy = ys;
	scrDrawConfig(c_black, 1, fSettings, fa_left, fa_top);
	if (scrMenuButton(xx, yy, bw, bh, sprMenuSnap, "Snap: " + string(global.snapW)))
	{
		// 对齐调整
		var new = get_integer("Snap Size (1 ~ 128)", 0);
		if (new != 0)
		{
			new = clamp(new, 1, 128);
			global.snapW = new;
			global.snapH = new;
		}
	}
	yy += yb;
	if (scrMenuButton(xx, yy, bw, bh, sprMenuOffset, "Offset: (" + string(global.snapX) + ", " + string(global.snapY) + ")"))
	{
		// 偏移调整
		var new = get_integer("Snap X Offset Size (default is 0)", 0);
		global.snapX = new;
		
		var new = get_integer("Snap Y Offset Size (default is 0)", 0);
		global.snapY = new;
	}
	yy += yb;
	if (scrMenuButton(xx, yy, bw, bh, sprMenuGrid, "Grid: " + string(global.snapW)))
	{
		// 网格调整
		var new = get_integer("Grid Size (2 ~ 128)", 0);
		if (new != 0)
		{
			new = clamp(new, 2, 128);
			global.gridW = new;
			global.gridH = new;
			with (objMapArea)
			{
				sprite_assign(spr, scrGetMapSurfaceSprite());
			}
		}
	}
	yy += yb;
	if (scrMenuButton(xx, yy, bw, bh, sprMenuSpeed, "Speed: " + string(room_speed) + " / " + string(fps)))
	{
		// 速度调整
		var new = get_integer("Game Speed (default is 50, 1 ~ 500)", 0);
		if (new != 0)
		{
			new = clamp(new, 1, 500);
			room_speed = new;
		}
	}
	yy += yb;
	if (scrMenuButton(xx, yy, bw, bh, sprMenuMap, "Clear Map"))
	{
		// 清空地图
		with (all) 
		{
			if (scrIsEditorObject(object_index))
			{
				instance_destroy();
			}
			with (objPlayer)
				instance_destroy();
			with (objBlood)
				instance_destroy();
		}
	}
}
#endregion
#region 关于
if (page == PAGE_ABOUT)
{
	yy = ys;
	scrDrawConfig(c_black, 1, fBold, fa_left, fa_top);
	xx = x;
	draw_text(xx, yy, "Jtool Mobile \n            v0.90\nBy Cube");
}
#endregion