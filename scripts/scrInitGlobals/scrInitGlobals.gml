/// @func scrInitGlobals()
/// @desc 初始化游戏

// 定义宏常量
#macro GLOBALSTATE_EDIT 0				// 编辑状态
#macro GLOBALSTATE_ZOOM 1				// 缩放状态

// 游戏菜单页码
#macro PAGE_FILE 0
#macro PAGE_PLAYER 1
#macro PAGE_MAP 2
#macro PAGE_ABOUT 3
// 对象菜单页码
#macro PAGE_WORLD 0
#macro PAGE_BLOCK 1
#macro PAGE_KILLER 2
#macro PAGE_MISC 3

// 定义全局变量
// 全局
room_speed = 50;						// 正常I Wanna的帧数（50FPS/s）
global.state = GLOBALSTATE_EDIT;		// 全局模式，防止误触
// 地图
global.mapName = "Untitled";			// 地图名字
global.mapX = objMapArea.x;				// 地图的相对原点位置X
global.mapY = objMapArea.y;				// 地图的相对原点位置Y
// 缩放
global.zoomLevel = 1;					// 地图缩放级别
global.zoomLevelLast = 1;				// 还原缩放级别
global.zoomX = objZoomPos.x;			// 缩放位置X
global.zoomY = objZoomPos.y;			// 缩放位置Y
// 摆放
global.currentObject = objPlayerStart;	// 当前选择对象，摆放用
global.snapX = 0;						// 对齐的X偏移
global.snapY = 0;						// 对齐的Y偏移
global.snapW = 32;						// 对齐的X距离
global.snapH = 32;						// 对齐的Y距离
// 网格
global.gridW = 32;						// 网格宽
global.gridH = 32;						// 网格高
global.gridAlpha = 0.3;					// 网格透明度
// 玩家
global.savePlayerX = 0;					// 玩家X
global.savePlayerY = 0;					// 玩家Y
global.grav = 1;						// 玩家重力
global.playerXscale = 1;				// 玩家朝向
global.savePlayerXscale = 1;			// 储存玩家重力
global.savePlayerGrav = 1;				// 储存玩家朝向
global.dotkid = false;					// 是否为点KID模式