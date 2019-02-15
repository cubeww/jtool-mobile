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
	// 缩小
	with (instance_create_layer(x, y, layer, objZoomEffect))
	{
		sprite_index = other.sprite_index;
	}
	
	global.zoomLevel = clamp(global.zoomLevel + 0.1, 0.1, 1); 
	global.zoomLevelLast = global.zoomLevel;
	// 限制范围
	var new_w = global.zoomLevel * 800;
	var new_h = global.zoomLevel * 608;
	
	objZoomPos.x = clamp(objZoomPos.x,
			global.mapX + new_w / 2,
			global.mapX + 800 - new_w / 2);
	objZoomPos.y = clamp(objZoomPos.y,
			global.mapY + new_h / 2,
			global.mapY + 608 - new_h / 2);
	global.zoomX = objZoomPos.x;
	global.zoomY = objZoomPos.y;
}

