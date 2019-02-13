/// @desc 移动视野到位置指示

click_x = global.zoomX;
click_y = global.zoomY;
//获取目标视图位置和尺寸，尺寸减半所以视图将聚焦在中心 
var vpos_x = camera_get_view_x(view_camera[1]);
var vpos_y = camera_get_view_y(view_camera[1]);
var vpos_w = camera_get_view_width(view_camera[1]) * 0.5;
var vpos_h = camera_get_view_height(view_camera[1]) * 0.5; //插值率 
var rate = 0.2; //将视图位置插入新的对应位置 
var new_x = lerp(vpos_x, click_x - vpos_w, rate);
var new_y = lerp(vpos_y, click_y - vpos_h, rate); //更新视图位置 
camera_set_view_pos(view_camera[1], new_x, new_y);
