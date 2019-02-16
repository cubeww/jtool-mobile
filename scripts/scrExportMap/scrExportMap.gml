/// @func scrImportMap()
/// @desc 输出地图到剪切板
var str = "";
var saved;
// header and info
var delim = "|";
str += "jtool";
str += delim;
str += "1.2.0";
str += delim;
str += "inf:" + string(global.infjump);
str += delim;
str += "dot:" + string(global.dotkid);
str += delim;
str += "sav:" + string(global.savetype);
str += delim;
str += "bor:" + "0";
str += delim;
str += "px:" + floatToBase32String(global.savePlayerX);
str += delim;
str += "py:" + floatToBase32String(global.savePlayerY);
str += delim;
str += "ps:" + string(global.savePlayerXscale);
str += delim;
str += "pg:" + string(global.saveGrav);
str += delim;
str += "objects:";

// objects
with (all)
{
	if (scrIsEditorObject(object_index))
	{
		var yy = y - global.mapY;
		str += "-" + padStringLeft(intToBase32String(y + 128 - global.mapY), 2, "0");
		with (all)
		{
			if (scrIsEditorObject(object_index))
			{
				var saveid = objectToSaveID(object_index);
				if (saveid != -1)
				{
					str += intToBase32String(saveid) + padStringLeft(intToBase32String(x + 128 - global.mapX), 2, "0");
					saved = true;
				}
			}
		}
	}
}

// secondary data
str += "\n";
str += "\n";
str += "data repeated below for easy parsing by other tools";
str += "\n";
str += "objects: (x, y, type)";
str += "\n";
with (all)
{
	if (!scrIsEditorObject(object_index)) continue;
	str += string(x - global.mapX) + " " + string(y - global.mapY) + " " + string(objectToSaveID(object_index)) + " ";
}
str += "\n";
str += "version:" + "1.2.0";
str += "\n";
str += "infinitejump:" + string(global.infjump);
str += "\n";
str += "dotkid:" + string(global.dotkid);
str += "\n";
str += "savetype:" + string(global.savetype);
str += "\n";
str += "bordertype:" + "0";
str += "\n";
str += "playersavex:" + string(global.savePlayerX);
str += "\n";
str += "playersavey:" + string_format(global.savePlayerY, 3, 16);
str += "\n";
str += "playersavexscale:" + string(global.savePlayerXscale);
str += "\n";

Clipboard_SetClipString(str);

return true