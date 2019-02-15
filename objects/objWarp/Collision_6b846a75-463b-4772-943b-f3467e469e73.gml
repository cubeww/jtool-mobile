/// @desc 胜利
with (other)
{
    var inst = instance_create_layer(x, y, layer, objPlayerVictory);
    inst.sprite_index = sprite_index;
    if (global.dotkid) 
		inst.sprite_index = sprDotkid;
    inst.image_speed = image_speed;
    inst.image_xscale = global.playerXscale;
    instance_destroy();
}
image_blend = make_color_rgb(118, 238, 0);