/// @desc 创建玩家
with (object_index)
{
	if (id != other.id)
		instance_destroy();
}
with (objPlayer)
	instance_destroy();
instance_create_layer(x + 17, y + 23, "Player", objPlayer);
