/// @func scrSavePlayer()
/// @desc 保存玩家
global.savePlayerX = objPlayer.x;
global.savePlayerY = objPlayer.y;
with (objPlayer) 
{
	if (!place_free(x, floor(y))) 
		global.savePlayerY += 1;
}
global.saveGrav = global.grav;
global.savePlayerXScale = global.playerXscale;