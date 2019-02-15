/// @desc 墙体碰撞
if (!place_free(x + hspeed, y))
{
	if (global.grav == 1)
	{
		var dir;
		if (hspeed <= 0) dir = 180;
		if (hspeed > 0) dir = 0;
		move_contact_solid(dir, abs(hspeed));
	}
	else
	{
		var dir;
		if (hspeed < 0) dir = 180;
		if (hspeed >= 0) dir = 0;
		move_contact_solid(dir, abs(hspeed));
	}
	hspeed = 0;
}
if (!place_free(x, y + vspeed))
{
	if (global.grav == 1)
	{
		var dir;
		if (vspeed <= 0) dir = 90;
		if (vspeed > 0)
		{
			dir = 270;
			djump = true;
		}
		move_contact_solid(dir, abs(vspeed))
	}
	else
	{
		var dir;
		if (vspeed <= 0)
		{
			dir = 90;
			djump = true;
		}
		if (vspeed > 0) dir = 270;
		move_contact_solid(dir, abs(vspeed));
	}
	vspeed = 0;
}

if (!place_free(x + hspeed, y + vspeed))
{
	hspeed = 0;
}