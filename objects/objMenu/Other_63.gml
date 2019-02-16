/// @desc 异步获取
var ID = ds_map_find_value(async_load, "id");
if (ID == msg)
{
	if (ds_map_find_value(async_load, "status"))
	{
		switch (get)
		{
			case "import":
				scrImportMap();
				break;
			case "export":
				scrExportMap();
				break;
			case "cancel":
				var new = ds_map_find_value(async_load, "value");
				new = clamp(new, 0, new);
				global.cancelLevel = new;
				break;
			case "snap":
				var new = ds_map_find_value(async_load, "value");
				new = clamp(new, 1, 128);
				global.snapW = new;
				global.snapH = new;
				break;
			case "offsetX":
				var new = ds_map_find_value(async_load, "value");
				global.snapX = new;
				msg = get_integer_async("Snap Y Offset Size (default is 0)", 0);
				get = "offsetY";
				break;
			case "offsetY":
				var new = ds_map_find_value(async_load, "value");
				global.snapY = new;
				break;
			case "grid":
				var new = ds_map_find_value(async_load, "value");
				new = clamp(new, 2, 128);
				global.gridW = new;
				global.gridH = new;
				with (objMapArea)
				{
					sprite_assign(spr, scrGetMapSurfaceSprite());
				}
				break;
			case "speed":
				var new = ds_map_find_value(async_load, "value");
				if (new != 0)
				{
					new = clamp(new, 1, 500);
					room_speed = new;
				}
				break;
		}
	}
}

		