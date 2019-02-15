/// @desc 板子碰撞
if (global.grav == 1)
{
	// 触碰板子
	if (y - vspeed / 2 <= other.y)
	{

		// 对齐板子
		if (other.vspeed >= 0)
		{
			y = other.y - 9;
			vspeed = other.vspeed;
		}
		onPlatform = true;
		djump = true;
	}
}
else
{
	// 触碰板子
	if (y - vspeed / 2 >= other.y + other.sprite_height - 1)
	{

		// 对齐板子
		if (other.yspeed <= 0)
		{
			y = other.y + other.sprite_height + 8;
			vspeed = other.yspeed;
		}
		onPlatform = true;
		djump = true;
	}
}