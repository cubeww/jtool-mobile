/// @func scrDestroyIfSame()
/// @desc 摧毁实例如果与底下的完全重合
var list = ds_list_create();
instance_place_list(x, y, object_index, list, false);
// 遍历所有接触到的实例，若位置与自己完全相同，摧毁自己
for (var i = 0; i < ds_list_size(list); i++)
{
	var inst = list[| i];
	if (x == inst.x && y == inst.y)
	{			
		ds_list_destroy(list);
		instance_destroy();
		exit;
	}
}
ds_list_destroy(list);