/// @desc 缩放实现
//获取当前视图尺寸
var view_w = camera_get_view_width(view_camera[1]);
var view_h = camera_get_view_height(view_camera[1]); 
//设置插值率 
var rate = 0.2; 
//通过插值计算当前和目标缩放尺寸获取新视图尺寸
var new_w = lerp(view_w, global.zoomLevel  * 800, rate);
var new_h = lerp(view_h, global.zoomLevel  * 608, rate); //应用新尺寸
camera_set_view_size(view_camera[1], new_w, new_h);

//获取重新对齐视图所需的位移值 
var shift_x = camera_get_view_x(view_camera[1]) - (new_w - view_w) * 0.5;
var shift_y = camera_get_view_y(view_camera[1]) - (new_h - view_h) * 0.5; //更新视图位置 
camera_set_view_pos(view_camera[1], shift_x, shift_y);