/// @desc 初始化变量
page = PAGE_WORLD;
// 按下特效
ef = instance_create_layer(x, 56, "ButtonEffect", objButtonEffect);
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
var p = PAGE_WORLD;
i = 0;
obj[p, i++] = objPlayerStart;

#endregion

#region 砖块
var p = PAGE_BLOCK;
i = 0;
obj[p, i++] = objBlock;

#endregion

#region 杀人
var p = PAGE_KILLER;
i = 0;
obj[p, i++] = objSpikeUp;


#endregion

#region 其它
var p = PAGE_MISC;
i = 0;


#endregion

// 按下特效 
ef2 = instance_create_layer(x, 120, "ButtonEffect", objButtonEffect);
ef2.w = 48;
ef2.h = 48;