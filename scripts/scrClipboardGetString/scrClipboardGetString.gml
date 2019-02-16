/// @func scrClipboardGetString()
/// @desc 根据系统获取剪切板
if (os_type == os_windows)
	return clipboard_get_text();
else if (os_type == os_android)
	return Clipboard_GetClipString();