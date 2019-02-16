/// @func scrImportMap()
/// @desc 从剪切板导入地图
var content = Clipboard_GetClipString();
var index = 1;
var delim = "|";
var currentstring = "";
var section_number = 0;
var pos = string_pos("\n", content); // 换行符位置
while (index <= string_length(content) && index)
{
	var nextchar = string_char_at(content, index);
	
	if (nextchar != delim)
	{
		currentstring += nextchar;
	}
	if (nextchar == delim or index == string_length(content))
	{
		// 是否为jtool地图
		if (section_number == 0 && currentstring != "jtool")
		{
			show_message("Not a valid jtool map.");
			exit;
		}
		if (section_number > 1)
		{
			var prefix = splitDelimString(currentstring, ":", 0);
			var suffix = splitDelimString(currentstring, ":", 1);
			if (prefix == "objects")
			{
				with (all)
					if scrIsEditorObject(object_index) instance_destroy();
				var objectstring = suffix;
				if (string_pos("\n", objectstring) != 0)
					objectstring = string_copy(suffix, 0, string_pos("\n", suffix));
				var i = 1;
				var yy = 0;
				while (i <= string_length(objectstring))
				{
					
					if (string_copy(objectstring, i, 1) == "-")
					{
						yy = base32StringToInt(string_copy(objectstring, i + 1, 2));
						i += 3;
					}
					else
					{
						var objectid = saveIDToObject(base32StringToInt(string_copy(objectstring, i, 1)));
						if (objectid != noone)
						{
							var xx = base32StringToInt(string_copy(objectstring, i + 1, 2));
							var inst = instance_create_layer(xx - 128 + global.mapX, yy - 128 + global.mapY, scrGetObjectLayer(objectid), objectid);
						}
						i += 3;
					}
				}
			}
			else if (prefix == "dot")
			{
				global.dotkid = real(suffix);
			}
			else if (prefix == "inf")
			{
				global.infjump = real(suffix);
			}
			else if (prefix == "sav")
			{
				global.savetype = real(suffix);
			}
			else if (prefix == "px")
			{
				global.savePlayerX = base32StringToFloat(suffix);
			}
			else if (prefix == "py")
			{
				global.savePlayerY = base32StringToFloat(suffix);
			}
			else if (prefix == "ps")
			{
				global.savePlayerXscale = real(suffix);
			}
			else if (prefix == "pg")
			{
				global.saveGrav = real(suffix);
			}
		}
		section_number += 1;
		currentstring = "";
	}
	index += 1;
}