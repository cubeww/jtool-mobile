/// @desc 边界死亡
if ((x < global.mapX || x > global.mapX + 800 || y < global.mapY || y > global.mapY + 608 || place_meeting(x, y, objPlayerKiller)) && 
		global.canDeath) 	
{
	scrKillPlayer();
}
