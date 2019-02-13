/// @func scrInitGlobals()
/// @desc 初始化游戏

// 定义宏常量
#macro GLOBALSTATE_EDIT 0	// 编辑状态
#macro GLOBALSTATE_PLAY 1	// 测试状态
#macro GLOBALSTATE_INPUT 2	// 输入状态

// 定义全局变量
room_speed = 50; // 正常I Wanna的帧数（50FPS/s）
global.state = GLOBALSTATE_EDIT; // 全局模式，防止误触
global.mapName = "Untitled"; // 地图名字