/// @func objbjectTobjSaveID(id)
/// @arg id
switch (argument0)
{
    case objBlock:        return 1;
    case objMiniBlock:    return 2;
    case objSpikeUp:          return 3;
    case objSpikeRight:       return 4;
    case objSpikeLeft:        return 5;
    case objSpikeDown:        return 6;
    case objMiniSpikeUp:      return 7;
    case objMiniSpikeRight:   return 8;
    case objMiniSpikeLeft:    return 9;
    case objMiniSpikeDown:    return 10;
    case objCherry:            return 11;
    case objSave:             return 12;
    case objPlatform:         return 13;
    case objWater:            return 14;
    case objWater2:           return 15;
    case objWalljumpL:        return 16;
    case objWalljumpR:        return 17;
    case objKillerBlock:      return 18;
    case objSaveBlocker:    return 19;
    case objPlayerStart:      return 20;
    case objWarp:             return 21;
    case objJumpRefresher:    return 22;
    case objWater3:           return 23;
    case objGravityUp:   return 24;
    case objGravityDown: return 25;
    case objSaveFlip:         return 26;
    default: return -1;
}