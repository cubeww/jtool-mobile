/// @desc 生效虚拟键
var keycode;
switch (key)
{
	case KEY.LEFT:
		keycode = global.leftButton;
		break;
	case KEY.RIGHT:
		keycode = global.rightButton;
		break;
	case KEY.UP:
		keycode = global.jumpButton;
		break;
	case KEY.SHOOT:
		keycode = global.shootButton;
		break;
	case KEY.RESTART:
		keycode = global.restartButton;
		break;
	case KEY.CANCEL:
		keycode = global.cancelButton;
		break;
}
virtual_key_add(x, y, 96, 96, keycode);