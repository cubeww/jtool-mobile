/// @func scrGetObjectLayer(obj)
/// @desc 获取物体应该所处的图层
/// @arg obj
switch (argument0) 
{
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
	case objWater3:
		return "Water";
	case objWalljumpL:
	case objWalljumpR:
		return "Vine";
	case objJumpRefresher:
		return "Misc";
	case objSave:
	case objSaveFlip:
		return "Save";
	case objPlayerStart:
		return "PlayerStart";
		
    default:
        return "Misc";
}