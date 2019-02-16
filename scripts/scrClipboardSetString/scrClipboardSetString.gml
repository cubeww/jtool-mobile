/// @func scrClipboardSetString(str)
/// @desc 根据系统设定剪切板
/// @arg str
if (os_type == os_windows)
	clipboard_set_text(argument0);
else if (os_type == os_android)
	Clipboard_SetClipString(argument0);