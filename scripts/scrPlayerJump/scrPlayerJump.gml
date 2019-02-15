/// @func scrPlayerJump()
/// @desc 跳跃键按下
if (place_meeting(x, y + global.grav, objBlock) || 
		onPlatform || 
		place_meeting(x, y + global.grav, objWater))
{
	vspeed = -jump;
	djump = true;
	audio_play_sound(sndJump, 0, 0);
}
else if (djump || 
		place_meeting(x, y + global.grav, objWater2) || 
		global.infjump)
{
	vspeed = -jump2;
	sprite_index = sprPlayerJump;
	audio_play_sound(sndDJump, 0, 0);
	djump = false;
}