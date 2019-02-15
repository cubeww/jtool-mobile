/// @desc 玩家控制
var h = keyboard_check(global.rightButton) ? 1 : -keyboard_check(global.leftButton);
// 移动
if (h != 0)
{
	if (distance_to_object(objWalljumpR) > 1 && distance_to_object(objWalljumpL) > 1)
	{
		global.playerXscale = h;
	}
	if ((h == -1 && distance_to_object(objWalljumpR) > 1) || (h == 1 && distance_to_object(objWalljumpL) > 1))
	{
		hspeed = maxSpeed * h;
		sprite_index = sprPlayerRunning;
		image_speed = 0.5;
	}
}
else
{
	hspeed = 0;
	sprite_index = sprPlayerIdle;
	image_speed = 0.2;
}
// 设置上升 & 下落精灵
if (!onPlatform)
{
	if (vspeed * global.grav < -0.05)
	{
		sprite_index = sprPlayerJump;
	}
	else if (vspeed * global.grav > 0.05)
	{
		sprite_index = sprPlayerFall;
	}
}
// 检测板子
else
{
	if (!place_meeting(x, y + 4 * global.grav, objPlatform))
	{
		onPlatform = false;
	}
}
// 垂直速度限制
if (abs(vspeed) > maxVspeed)
{
	vspeed = sign(vspeed) * maxVspeed;
}

// 跳跃，射击
if (keyboard_check_pressed(global.shootButton))
	scrPlayerShoot();
if (keyboard_check_pressed(global.jumpButton))
	scrPlayerJump();
if (keyboard_check_released(global.jumpButton))
	scrPlayerVJump();
// 爬墙
var onVineL = distance_to_object(objWalljumpL) <= 1 and place_free(x, y + global.grav);
var onVineR = distance_to_object(objWalljumpR) <= 1 and place_free(x, y + global.grav);

if (onVineL || onVineR)
{
	if (onVineR) global.playerXscale = -1;
	else global.playerXscale = 1;
	vspeed = 2 * global.grav;
	sprite_index = sprPlayerSliding;
	image_speed = 0.5;

	if ((onVineL && keyboard_check_pressed(global.rightButton)) ||
			(onVineR && keyboard_check_pressed(global.leftButton)))
	{
		// 跳出
		if (keyboard_check(global.jumpButton))
		{
			if (onVineR) hspeed = -15;
			else hspeed = 15;
			vspeed = -9 * global.grav;
			audio_play_sound(sndWallJump, 0, 0);
			sprite_index = sprPlayerJump;
		}

		// 墙上走
		else
		{
			if (onVineR) hspeed = -3;
			else hspeed = 3;
			sprite_index = sprPlayerFall;
		}
	}
}