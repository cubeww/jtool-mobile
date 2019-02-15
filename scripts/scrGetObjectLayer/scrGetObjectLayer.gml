/// @func scrGetObjectLayer(obj)
/// @desc 获取物体应该所处的图层
/// @arg obj
switch (argument0) 
{
	case objSave:
	case objSaveFlip:
	case objWarp:
	case objGravityUp:
	case objGravityDown:
		return "Player";
	case objBlock: 
	case objMiniBlock:
	case objPlatform:
	case objSaveBlocker:
		return "Block";
	case objSpikeUp:
	case objSpikeDown:
	case objSpikeLeft:
	case objSpikeRight:	
	case objMiniSpikeUp:
	case objMiniSpikeDown:
	case objMiniSpikeLeft:
	case objMiniSpikeRight:
	case objCherry:
	case objKillerBlock:
		return "Killer";
	case objWater:
	case objWater2:
		return "Water";
	case objWalljumpL:
	case objWalljumpR:
		return "Vine";
	case objJumpRefresher:
	case objPlayerStart:
		return "Misc";
		
    default:
        return "Misc";
}