/// @func scrImportMap()
/// @desc 从剪切板导入地图
var content = scrClipboardGetString();	// 从剪切板获取地图内容
if (string_pos("\n", content) != 0)		// 如果获取的地图内容包含换行符
{
	content = string_copy(content, 0, string_pos("\n", content)); // 只添加到换行符以前的部分，后面的内容作废
}
var index = 1;							// 字符阅读索引
var delim = "|";						// 分割符
var currentstring = "";					// 当前所阅读的字符串
var section_number = 0;					// 阅读到第几部分
while (index <= string_length(content) && index)	// 遍历整个字符串的字符
{
	var nextchar = string_char_at(content, index);	// 下一个字符阅读
	
	if (nextchar != delim)			// 如果下一个字符不是分割符
	{
		currentstring += nextchar;	// 当前字符串加上下一个字符
	}
	if (nextchar == delim || index == string_length(content)) // 如果下一个字符是分割符，或者已经读到字符串末尾
	{
		// 在第一部分，判断是否为jtool地图
		if (section_number == 0 && currentstring != "jtool")
		{
			show_message("Not a valid jtool map."); // 非Jtool地图，报错
			exit;
		}
		if (section_number > 1) // 如果大于第一部分
		{
			var prefix = splitDelimString(currentstring, ":", 0); // 读到了什么属性
			var suffix = splitDelimString(currentstring, ":", 1); // 这个属性的赋值是
			if (prefix == "objects") // 如果读到的属性是对象
			{
				with (all) // 先清空地图
				{
					if (scrIsEditorObject(object_index))
						instance_destroy();
				}
					
				var objectstring = suffix; // 获取对象地图字符串（坐标，种类等）
				
				var i = 1;	// 遍历对象字符串的索引
				var yy = 0; // 对象的Y坐标
				while (i <= string_length(objectstring)) // 遍历对象字符串
				{		
					if (string_copy(objectstring, i, 1) == "-") // 如果读到了“-”分隔符
					{
						yy = base32StringToInt(string_copy(objectstring, i + 1, 2)); // 直接获取Y坐标信息
						i += 3;
					}
					else // 如果没有读到“-”分隔符
					{
						var objectid = saveIDToObject(base32StringToInt(string_copy(objectstring, i, 1))); // 获取对象的种类
						if (objectid != noone) // 如果对象种类存在
						{
							var xx = base32StringToInt(string_copy(objectstring, i + 1, 2)); // 获取对象X坐标信息
							// 创建地图对象
							var inst = instance_create_layer(xx - 128 + global.mapX, yy - 128 + global.mapY, scrGetObjectLayer(objectid), objectid);
						}
						i += 3;
					}
				}
			}
			// 读到的属性不是对象，而是其它属性，则对系统进行设定
			else if (prefix == "dot") global.dotkid	= real(suffix);
			else if (prefix == "inf") global.infjump = real(suffix);
			else if (prefix == "sav") global.savetype = real(suffix);
			else if (prefix == "bor") global.bordertype = real(suffix);
			else if (prefix == "px") global.savePlayerX = base32StringToFloat(suffix) + global.mapX;
			else if (prefix == "py") global.savePlayerY = base32StringToFloat(suffix) + global.mapY;
			else if (prefix == "ps") global.savePlayerXscale = real(suffix);
			else if (prefix == "pg") global.saveGrav = real(suffix);
		}
		// 转入下一部分
		section_number += 1;
		// 重置当前字符串
		currentstring = "";
	}
	index += 1;
}
// 边界判断
if (global.bordertype == BORDER_SOLID) 
	scrCreateBorderBlock();
else with(objBorderBlock) 
	instance_destroy();
// 读取玩家位置
scrLoadPlayer();