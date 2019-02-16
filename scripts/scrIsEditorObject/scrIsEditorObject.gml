/// @func scrIsEditorObject(obj)
/// @desc 返回是否为可放置物体
/// @arg obj
switch (argument0)
{
	case objPlayerStart:
	case objSave:
	case objSaveFlip:
	case objWarp:
	case objGravityUp:
	case objGravityDown:
	
	case objBlock: 
	case objMiniBlock:
	case objPlatform:
	case objSaveBlocker:
	
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
	
	
	case objWater:
	case objWater2:
	case objWater3:
	case objWalljumpL:
	case objWalljumpR:
	case objJumpRefresher:
		return true;
	default:
		return false;
}