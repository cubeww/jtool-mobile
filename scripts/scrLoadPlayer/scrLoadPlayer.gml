/// @func scrSavePlayer()
/// @desc 读取玩家
with (objPlayer) instance_destroy();
with (objBlood) instance_destroy();
global.grav = global.saveGrav;
global.playerXscale = global.savePlayerXscale;
if (instance_exists(objPlayerStart))
	instance_create_layer(global.savePlayerX, global.savePlayerY, "Player", objPlayer);
with (objPlayerVictory) instance_destroy();
with (objWarp) image_blend = c_white;