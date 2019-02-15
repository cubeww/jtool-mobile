/// @func scrKillPlayer()
/// @desc 杀死玩家
if (instance_exists(objPlayer) && global.canDeath)
{
	audio_play_sound(sndDeath, 0, 0);
	with (objPlayer)
	{
		repeat (200) 
			instance_create_layer(x, y, layer,objBlood);
		instance_destroy();
	}
}