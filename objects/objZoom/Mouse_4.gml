/// @desc 放大操作
if (mode == 0)
{	
	with (instance_create_layer(x, y, layer, objZoomEffect))
	{
		sprite_index = other.sprite_index;
	}
	global.zoomLevel = clamp(global.zoomLevel - 0.1, 0.1, 1); 
	global.zoomLevelLast = global.zoomLevel;
}
else if (mode == 1)
{	
	with (instance_create_layer(x, y, layer, objZoomEffect))
	{
		sprite_index = other.sprite_index;
	}
	global.zoomLevel = clamp(global.zoomLevel + 0.1, 0.1, 1); 
	global.zoomLevelLast = global.zoomLevel;
}

