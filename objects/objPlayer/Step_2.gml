/// @desc 边界 & 死亡判断
if (global.bordertype == BORDER_DEATH)	
{
	if (x < global.mapX || x > global.mapX + 800 || y < global.mapY || y > global.mapY + 608)
		scrKillPlayer();
}
var killer = instance_place(x, y, objPlayerKiller);
if (killer != noone) // 变红色
{
	killer.image_blend = make_color_rgb(255, 106, 106);
	killer.alarm[0] = 10;
	scrKillPlayer();
}