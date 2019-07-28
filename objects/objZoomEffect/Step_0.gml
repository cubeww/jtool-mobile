/// @desc 放大镜特效
image_xscale += 0.05;
image_yscale = image_xscale;
image_alpha -= 0.1;
if (image_alpha <= 0)
{
	instance_destroy();
}

// 碰撞优化
mask_index = noone;
