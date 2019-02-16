/// @func scrCreateBorderBlock()
/// @desc 创建边界砖块
var inst;
inst = instance_create_layer(global.mapX, global.mapY - 32, "Block", objBorderBlock);
inst.image_xscale = 25;
inst = instance_create_layer(global.mapX, global.mapY + 608, "Block", objBorderBlock);
inst.image_xscale = 25;
inst = instance_create_layer(global.mapX - 32, global.mapY, "Block", objBorderBlock);
inst.image_yscale = 19;
inst = instance_create_layer(global.mapX + 800, global.mapY, "Block", objBorderBlock);
inst.image_yscale = 19;