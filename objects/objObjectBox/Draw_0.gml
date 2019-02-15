/// @desc 绘制对象盒子
var xs = x;		// 起始的按钮X
var ys = 56;	// 起始的头按钮Y
var xx = xs;	// 当前的X
var yy = ys;	// 当前的Y
var xb = 48;	// 头按钮的横向间隔
var iconW = 48;	// 头按钮的宽度
var iconH = 48;	// 头按钮的高度
scrDrawConfig(c_black, 1, fUI24, fa_left, fa_top);
draw_text(x, y, "Object");
#region 头按钮
var i = 0;
if (scrMenuButtonIcon(xx + xb * i, yy, iconW, iconH, sprMenuWorld))
{	
	// 世界
	page = PAGE_WORLD;
	ef.x = xx + xb * i;
	event_user(0);
}
i++;
if (scrMenuButtonIcon(xx + xb * i, yy, iconW, iconH, sprMenuBlock))
{
	// 砖
	page = PAGE_BLOCK;
	ef.x = xx + xb * i;
	event_user(0);
}
i++;
if (scrMenuButtonIcon(xx + xb * i, yy, iconW, iconH, sprMenuKiller))
{
	// 杀人
	page = PAGE_KILLER;
	ef.x = xx + xb * i;
	event_user(0);
}
i++;
if (scrMenuButtonIcon(xx + xb * i, yy, iconW, iconH, sprMenuMisc))
{
	// 其它
	page = PAGE_MISC;
	ef.x = xx + xb * i;
	event_user(0);
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
			if (scrObjectButton(dx, dy, ww, hh, object_get_sprite(dobj)))
			{
				// 触发按下特效
				ef2.x = dx;
				ef2.y = dy;
				ef2.atPage = page
				event_user(0);
				// 切换全局摆放对象
				global.currentObject = dobj;
			}
			count++;
		}
		else break;
	}
}

#endregion