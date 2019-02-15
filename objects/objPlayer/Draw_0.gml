/// @desc 绘制玩家
var drawY = y;
if (global.grav == -1) drawY += 1;

if (mask_index != sprDotkid)
{
	if (global.showhitbox != HITBOX_ONLY_HITBOX)
	{
		draw_sprite_ext(sprite_index, image_index, x, drawY,
				global.playerXscale, global.grav, image_angle, image_blend, image_alpha);
	}
	if (global.showhitbox == HITBOX_ALL)
	{
		draw_sprite_ext(mask_index, 0, x, drawY,
				global.playerXscale, global.grav, image_angle, c_white, 0.5);
	}
	else if (global.showhitbox == HITBOX_ONLY_HITBOX)
	{
		draw_sprite_ext(mask_index, 0, x, drawY,
				global.playerXscale, global.grav, image_angle, c_white, 1);
	}
}
else
{
	draw_sprite(sprDotkid, 0, x, y);
	if (global.dotkid == DOT_KID_WITH_OUTLINE)
	{
		draw_sprite(sprDotkidOutline, 0, x, y + 8);
	}
}