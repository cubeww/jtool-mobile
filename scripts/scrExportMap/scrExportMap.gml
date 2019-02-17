/// @func scrImportMap()
/// @desc 输出地图
var str = ""; // 最终输出的字符串
// 第一部分：Jtool地图所需的部分
// 基本信息
var delim = "|";
str += "jtool";
str += delim;
str += "1.2.0";
str += delim;
str += "inf:" + string(global.infjump);
str += delim;
str += "dot:" + string(global.dotkid > 0);
str += delim;
str += "sav:" + string(global.savetype);
str += delim;
str += "bor:" + string(global.bordertype);
str += delim;
str += "px:" + floatToBase32String(global.savePlayerX - global.mapX);
str += delim;
str += "py:" + floatToBase32String(global.savePlayerY - global.mapY);
str += delim;
str += "ps:" + string(global.savePlayerXscale);
str += delim;
str += "pg:" + string(global.saveGrav);
str += delim;
str += "objects:";
// 所有对象（位置，种类）保存
with (all)
{
	if (scrIsEditorObject(object_index)) // 先判断是否为可编辑对象
	{
		// Y坐标存储
		var addY = padStringLeft(intToBase32String(y + 128 - global.mapY), 2, "0");
		// 对象种类存储
		var saveid = intToBase32String(objectToSaveID(object_index));
		// X坐标存储
		var addX = padStringLeft(intToBase32String(x + 128 - global.mapX), 2, "0");
		// 添加到储存字符串
		str += "-" + addY + saveid + addX; 
				
	}
}
// 第二部分：便于人类阅读的部分
if (os_browser == browser_not_a_browser) // 浏览器换行符有BUG，不让他搞
{
	str += "\n";
	str += "\n";
	str += "data repeated below for easy parsing by other tools";
	str += "\n";
	str += "objects: (x, y, type)";
	str += "\n";
	with (all)
	{
		if (scrIsEditorObject(object_index))
		{
			str += string(x - global.mapX) + " " + string(y - global.mapY) + " " + string(objectToSaveID(object_index)) + " ";
		}
	}
	str += "\n";
	str += "version:" + "1.2.0";
	str += "\n";
	str += "infinitejump:" + string(global.infjump);
	str += "\n";
	str += "dotkid:" + string(global.dotkid > 0);
	str += "\n";
	str += "savetype:" + string(global.savetype);
	str += "\n";
	str += "bordertype:" + string(global.bordertype);
	str += "\n";
	str += "playersavex:" + string(global.savePlayerX);
	str += "\n";
	str += "playersavey:" + string_format(global.savePlayerY, 3, 16);
	str += "\n";
	str += "playersavexscale:" + string(global.savePlayerXscale);
	str += "\n";
}
// 弹出对话框以保存
get_string_async("Jtool Map Code", str);