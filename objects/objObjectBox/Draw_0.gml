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
	page = OPAGE.WORLD;
}
i++;
if (scrMenuButtonIcon(xx + yp * i, yy, iconW, iconH, sprMenuBlock))
{
	// 砖
	_menuButtonEffect(xx + yp * i, yy, iconW, iconH);
	page = OPAGE.BLOCK;
}
i++;
if (scrMenuButtonIcon(xx + yp * i, yy, iconW, iconH, sprMenuKiller))
{
	// 杀人
	_menuButtonEffect(xx + yp * i, yy, iconW, iconH);
	page = OPAGE.KILLER;
}
i++;
if (scrMenuButtonIcon(xx + yp * i, yy, iconW, iconH, sprMenuMisc))
{
	// 其它
	_menuButtonEffect(xx + yp * i, yy, iconW, iconH);
	page = OPAGE.MISC;
}
#endregion
#region 绘制各个对象
var maxW = 4; // 一行最多存在
var maxH = 4; // 最多存在几行
var xb = 48; // 水平间隔
var yb = 48; // 垂直间隔
var ww = 48; // 宽度
var hh = 48; // 高度
var xs = xx; // 开始X
var ys = yy + 64; // 开始Y
for (var i = 0, count = 0; i < maxH; i++)
{
	for (var j = 0; j < maxW; j++)
	{
		if (obj[page, count] != -1) // 该位置存在对象
		{
			var dx = xs + j * xb;
			var dy = ys + i * yb;
			var dobj = obj[page, count];
			scrObjectButton(dx, dy, ww, hh, object_get_sprite(dobj));
			count++;
		}
		else break;
	}
}

#endregion


// 按钮特效
event_user(0);