/// @func scrInitGlobals()
/// @desc 初始化游戏

// 定义宏常量
#macro GLOBALSTATE_EDIT 0	// 编辑状态
#macro GLOBALSTATE_PLAY 1	// 测试状态
#macro GLOBALSTATE_INPUT 2	// 输入状态

// 枚举
enum PAGE 
{
	FILE = 0,
	PLAYER = 1,
	MAP = 2,
	ABOUT = 3,
}
enum OPAGE
{
	WORLD = 0,
	BLOCK = 1,
	KILLER = 2,
	MISC = 3
}
// 定义全局变量
room_speed = 50; // 正常I Wanna的帧数（50FPS/s）
global.state = GLOBALSTATE_EDIT; // 全局模式，防止误触
global.mapName = "Untitled"; // 地图名字
global.mapX = objMapArea.x; // 地图的相对原点位置X
global.mapY = objMapArea.y; // 地图的相对原点位置Y
global.zoomLevel = 1; // 地图缩放级别
global.zoomLevelLast = 1; // 还原缩放级别
global.zoomX = objZoomPos.x; // 缩放位置X
global.zoomY = objZoomPos.y; // 缩放位置Y