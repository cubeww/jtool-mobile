/// @desc 控制缩放位置
if (point_in_rectangle(mouse_x, mouse_y, x - 48, y - 48, x + 48, y + 48) &&
		mouse_check_button_pressed(mb_left))
{
	canMove = true;
	// 复原相机位置
	global.zoomX = 640;
	global.zoomY = 360;
	// 复原相机大小
	global.zoomLevel = 1;
}

if (canMove)
{
	objZoomPos.x = mouse_x;
	objZoomPos.y = mouse_y;
	
	with (objZoomPos)
	{
		event_user(0); // 限制位置
	}
}

if (mouse_check_button_released(mb_left) && canMove)
{
	canMove = false;
	if (!point_in_rectangle(mouse_x, mouse_y,
			global.mapX, global.mapY,
			global.mapX + 800, global.mapY + 608))
	{
		// 没有进入地图范围，直接复原
		objZoomPos.x = 640;
		objZoomPos.y = 360;
		global.zoomLevel = 1;
		global.zoomLevelLast = 1;
	}
	// 移动到放大镜位置
	global.zoomX = objZoomPos.x;
	global.zoomY = objZoomPos.y;
	global.zoomLevel = global.zoomLevelLast;
}
