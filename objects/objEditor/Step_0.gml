/// @desc 物体摆放器
if (global.state == GLOBALSTATE_EDIT) // 是否为编辑状态
{
	if (point_in_rectangle(mouse_x, mouse_y, global.mapX,
			global.mapY, global.mapX + 800, global.mapY + 608)) // 光标处于地图区域
	{
		// 检测是否删除实例（双击）
		if (mouse_check_button_pressed(mb_right))
		{
			var list = ds_list_create();
			collision_point_list(mouse_x, mouse_y, all, false, false, list, false);
			for (var i = 0; i < ds_list_size(list); i++)
			{
				if (scrIsEditorObject(list[| i].object_index))
				{
					with (list[|i])
						instance_destroy();
					break;
				}
			}
			ds_list_destroy(list);
			exit;
		}
		// 检测是否创建实例（单击）
		if (mouse_check_button_pressed(mb_left)) 
		{
			// 开启摆放预览
			prev = true;
		}
		
	}
}
if (mouse_check_button_released(mb_left) && prev) // 如果松开
{
	// 关闭摆放预览
	prev = false;
			
	// 创建对象
	var mx = (mouse_x - global.mapX) div global.snapW * global.snapW + global.mapX;
	var my = (mouse_y - global.mapY) div global.snapH * global.snapH + global.mapY;
	var obj = global.currentObject;
	var inst = instance_create_layer(mx, my, scrGetObjectLayer(obj), obj);
	with (inst)
	{
		scrDestroyIfSame();		// 当完全重合时销毁
		scrDestroyIfOutRange(); // 当超出范围时销毁
	}
}
