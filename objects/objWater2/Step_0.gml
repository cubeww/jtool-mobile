/// @desc 玩家碰撞
var inst = instance_place(x, y, objPlayer);
if (inst != noone)
{
	with (inst)
	{
		if (vspeed * global.grav > 2) 
		{
            vspeed = 2 * global.grav;
        }
	}
}