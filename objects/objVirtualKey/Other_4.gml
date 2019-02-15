/// @desc 生效虚拟键
var keycode;
switch (key)
{
	case KEY.LEFT:
		keycode = vk_left;
		break;
	case KEY.RIGHT:
		keycode = vk_right;
		break;
	case KEY.UP:
		keycode = vk_shift;
		break;
	case KEY.SHOOT:
		keycode = ord("Z");
		break;
	case KEY.RESTART:
		keycode = ord("R");
		break;
}
virtual_key_add(x, y, 96, 96, keycode);