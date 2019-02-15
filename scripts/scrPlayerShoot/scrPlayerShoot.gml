/// @func scrPlayerShoot()
/// @desc 射击
if (instance_number(objBullet) < 4) 
{
    var by = y + 6 * (mask_index == sprDotkid) ;
		
    var b = instance_create_layer(x, by, layer, objBullet);
    b.hspeed = global.playerXscale * 16;
    audio_play_sound(sndShoot, 0, 0);
}