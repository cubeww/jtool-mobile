/// @desc 控制缩放位置
if (point_in_rectangle(mouse_x, mouse_y, x - 48, y - 48, x + 48, y + 48) &&
		mouse_check_button_pressed(mb_left))
{
	canMove = true;
	global.state = GLOBALSTATE_ZOOM; // 切换为缩放状态
	// 复原相机位置
	global.zoomX = 640;
	global.zoomY = 360;
	// 复原相机大小
	global.zoomLevel = 1;
	// 记录当前视野宽高
	tempW = camera_get_view_width(view_camera[1]);
	tempH = camera_get_view_height(view_camera[1]);
}

if (canMove && point_in_rectangle(mouse_x, mouse_y,
			global.mapX, global.mapY,
			global.mapX + 800, global.mapY + 608))
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
	// 限制位置，防止超出范围看到游戏界面
	objZoomPos.x = clamp(objZoomPos.x,
			global.mapX + tempW / 2,
			global.mapX + 800 - tempW / 2);
	objZoomPos.y = clamp(objZoomPos.y,
			global.mapY + tempH / 2,
			global.mapY + 608 - tempH / 2);
	global.zoomX = objZoomPos.x;
	global.zoomY = objZoomPos.y;
	global.zoomLevel = global.zoomLevelLast;
	
	global.state = GLOBALSTATE_EDIT; // 切换为正常状态
}
