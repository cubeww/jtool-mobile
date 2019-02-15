/// @func scrGetObjectLayer(obj)
/// @desc 获取物体应该所处的图层
/// @arg obj
switch (argument0) 
{
    case objPlayerStart: 
		return "Player";
	case objBlock:
		return "Block";
	case objSpikeUp:
		return "Killer";
    default:
        return "Player";
}