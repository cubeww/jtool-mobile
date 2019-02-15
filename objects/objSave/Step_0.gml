/// @desc 检测
var shot = place_meeting(x, y, objPlayer) && keyboard_check_pressed(global.shootButton);

if (global.savetype == SAVETYPE_SHOOT)
{
	shot = shot || place_meeting(x, y, objBullet);
}

if (shot && canSave && instance_exists(objPlayer) && grav == global.grav)
{
	scrSavePlayer();
	canSave = false;
	alarm[0] = 30;
	alarm[1] = 59;
	image_index = 1;
}