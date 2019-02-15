/// @func scrGetObjectLayer(obj)
/// @desc 获取物体应该所处的图层
/// @arg obj
switch (argument0) 
{
    case objPlayerStart: 
		return "Player";
		break;
    default:
        return "World";
		break;
}