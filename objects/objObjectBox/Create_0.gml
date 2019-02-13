/// @desc 初始化变量
ef = false; // 按钮按下特效
efAlpha = 0;
efX = 0;
efY = 0;
efW = 0;
efH = 0;

page = OPAGE.WORLD;
_menuButtonEffect(x, 56, 32, 32);
// 对象盒子填充
var i = 0;
for (var j = 0; j < 4; j++)
{
	for (var k = 0; k < 16; k++)
	{
		obj[j, k] = -1;
	}
}
#region 世界
var p = OPAGE.WORLD;
obj[p, i++] = objPlayerStart;
#endregion

#region 砖块
var p = OPAGE.BLOCK
#endregion

#region 杀人
var p = OPAGE.KILLER
#endregion

#region 其它
var p = OPAGE.MISC
#endregion