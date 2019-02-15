/// @desc 初始化变量
jump = 8.5 * global.grav;		// 一段跳跃高度
jump2 = 7 * global.grav;		// 二段跳跃高度
maxSpeed = 3;					// 最大水平速度
maxVspeed = 9;					// 最大垂直速度
gravity = 0.4 * global.grav;	// 玩家重力

djump = true;					// 可否二段跳
onPlatform = false;				// 是否站在板子上
image_speed = 0.2;				// 图像速度

if (!global.dotkid)	// 是否为点KID模式
{
    mask_index = sprPlayerMask;
    sprite_index = sprPlayerIdle;
    if (global.grav)
    {
        mask_index = sprPlayerMask;
    }
    else
    {
        mask_index = sprPlayerMaskFlip;
    }
}
else // 点KID模式
{
    mask_index = sprDotkid;
    sprite_index = sprDotkid;
}