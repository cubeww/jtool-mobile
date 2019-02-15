/// @func scrFlipGravity(playerid)
/// @desc 反转重力
/// @arg playerid
with (argument0)
{
	global.grav *= -1;
	djump = 1;
	vspeed = 0;
	jump = 8.5 * global.grav;
	jump2 = 7 * global.grav;
	gravity = 0.4 * global.grav;
	if (!global.dotkid)
	{
		if (global.grav == 1)
		{
			mask_index = sprPlayerMask;
		}
		else
		{
			mask_index = sprPlayerMaskFlip;
		}
	}
	y += 4 * global.grav;
}